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
  final configLocalDataSource = ConfigLocalDataSourceImpl();
  final tm = TokenManager(configDataSource: configLocalDataSource);
  initTokenManager(tm);
  await tm.loadToken();
  runApp(MyApp(configLocalDataSource: configLocalDataSource));
}

class MyApp extends StatelessWidget {
  final ConfigLocalDataSource configLocalDataSource;

  const MyApp({super.key, required this.configLocalDataSource});

  @override
  Widget build(BuildContext context) {
    final configRepository = ConfigRepositoryImpl(
      localDataSource: configLocalDataSource,
    );

    return BlocProvider(
      create: (_) {
        final dio = _createDio();
        initDio(dio);

        // Load saved API URL and set as baseUrl
        configLocalDataSource.getApiUrl().then((savedUrl) {
          if (savedUrl != null) {
            setBaseUrl(savedUrl);
          }
        });

        final apiClient = ApiClient(dio);
        final authRepository = AuthRepositoryImpl(
          remoteDataSource: AuthRemoteDataSourceImpl(apiClient: apiClient),
        );
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
            if (state is ConfigFound) {
              WidgetsBinding.instance.addPostFrameCallback((_) {
                Navigator.of(context).pushReplacementNamed('/home');
              });
              return const SizedBox.shrink();
            }
            if (state is AuthSuccess) {
              WidgetsBinding.instance.addPostFrameCallback((_) async {
                await tokenManager.setToken(state.token, state.refreshBefore);
                Navigator.of(context).pushReplacementNamed('/home');
              });
              return const SizedBox.shrink();
            }
            if (state is ApiUrlMissing) {
              return const ApiUrlScreen();
            }
            if (state is CredentialsMissing) {
              return LoginScreen(
                prefilledUrl: state.apiUrl,
                prefilledUsername: state.savedUsername,
              );
            }
            if (state is AuthFailure) {
              // Show login screen again with error. User can retry
              return Scaffold(
                body: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('Login failed: ${state.message}'),
                      const SizedBox(height: 16),
                      ElevatedButton(
                        onPressed: () => context.read<ConfigBloc>().add(
                          const ClearCredentialsEvent(),
                        ),
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
                        onPressed: () => context.read<ConfigBloc>().add(
                          const CheckConfigEvent(),
                        ),
                        child: const Text('Retry'),
                      ),
                    ],
                  ),
                ),
              );
            }
            // Fallback: show API URL screen
            return const ApiUrlScreen();
          },
        ),
      ),
    );
  }

  Dio _createDio() {
    final dio = Dio();
    // Set default JSON content-type header
    dio.options.headers['Content-Type'] = 'application/json';
    // Accept self-signed certs (dev mode)
    dio.httpClientAdapter = IOHttpClientAdapter()
      ..onHttpClientCreate = (client) {
        client.badCertificateCallback =
            ((X509Certificate cert, String host, int port) => true);
        return client;
      };
    dio.interceptors.add(NetworkErrorInterceptor());
    dio.interceptors.add(
      AuthInterceptor(
        getToken: () => tokenManager.getToken() ?? '',
        refreshToken: () async => tokenManager.getToken() ?? '',
      ),
    );
    return dio;
  }
}
