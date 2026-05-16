import 'dart:io';

import 'package:assets_client/config/routes.dart';
import 'package:assets_client/config/theme.dart';
import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/network/auth_interceptor.dart';
import 'package:assets_client/core/network/error_interceptor.dart';
import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/core/services/token_manager.dart';
import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:assets_client/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:assets_client/features/auth/data/repositories/auth_repository_impl.dart';
import 'package:assets_client/features/auth/domain/repositories/auth_repository.dart';
import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';
import 'package:assets_client/features/config/data/repositories/config_repository_impl.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';
import 'package:assets_client/features/config/presentation/pages/api_url_screen.dart';
import 'package:assets_client/features/config/presentation/pages/login_screen.dart';
import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final configLocalDataSource = ConfigLocalDataSourceImpl();
    final configRepository = ConfigRepositoryImpl(
      localDataSource: configLocalDataSource,
    );
    final tm = TokenManager(configRepository: configRepository);
    initTokenManager(tm);

    return BlocProvider(
      create: (_) {
        final dio = _createBaseDio();
        initDio(dio);

        final apiClient = ApiClient(dio);
        final authRepository = AuthRepositoryImpl(
          remoteDataSource: AuthRemoteDataSourceImpl(apiClient: apiClient),
        );

        _addAuthInterceptor(dio, authRepository);

        return ConfigBloc(
          repository: configRepository,
          authRepository: authRepository,
        )..add(const CheckConfigEvent());
      },
      child: MaterialApp(
        title: 'Assets Client',
        theme: AppTheme.lightTheme,
        darkTheme: AppTheme.darkTheme,
        themeMode: ThemeMode.system,
        onGenerateRoute: RouteGenerator.generateRoute,
        home: BlocBuilder<ConfigBloc, ConfigState>(
          builder: (context, state) {
            if (state is ConfigLoading || state is ConfigInitial) {
              return const Scaffold(
                body: Center(child: CircularProgressIndicator()),
              );
            }
            if (state is ConfigReady || state is AuthSuccess) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context).pushReplacementNamed('/home');
              });
              return const SizedBox.shrink();
            }
            if (state is UrlsMissing) {
              return const ApiUrlScreen();
            }
            if (state is UrlSelected) {
              return LoginScreen(key: ValueKey(state.url), url: state.url);
            }
            if (state is AuthFailure) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login failed: ${state.message}'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () {
                          context.read<ConfigBloc>().add(
                            const SwitchUserEvent(),
                          );
                        },
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              );
            }
            if (state is ConfigError) {
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Error: ${state.message}'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () =>
                            context.read<ConfigBloc>().add(
                              const CheckConfigEvent(),
                            ),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              );
            }
            return const ApiUrlScreen();
          },
        ),
      ),
    );
  }

  Dio _createBaseDio() {
    final dio = Dio();
    dio.options.headers['Content-Type'] = 'application/json';
    dio.httpClientAdapter = IOHttpClientAdapter(
      createHttpClient: () {
        final client = HttpClient();
        client.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);
        return client;
      },
    );
    dio.interceptors.add(NetworkErrorInterceptor());
    return dio;
  }

  void _addAuthInterceptor(Dio dio, AuthRepository authRepository) {
    dio.interceptors.add(
      AuthInterceptor(
        getToken: () => tokenManager.getToken() ?? '',
        refreshToken: () async {
          final entity = await authRepository.refreshToken();
          await tokenManager.updateActiveToken(
            entity.token,
            entity.refreshBefore,
          );
          updateDioToken(entity.token);
          return entity.token;
        },
      ),
    );
  }
}
