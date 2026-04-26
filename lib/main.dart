import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:dio/dio.dart';
import 'package:assets_client/config/routes.dart';
import 'package:assets_client/config/theme.dart';
import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';
import 'package:assets_client/features/config/data/repositories/config_repository_impl.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';
import 'package:assets_client/features/config/presentation/pages/init_screen.dart';
import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/network/auth_interceptor.dart';
import 'package:assets_client/core/network/error_interceptor.dart';
import 'package:assets_client/core/services/token_manager.dart';
import 'package:assets_client/features/auth/data/datasources/auth_remote_data_source.dart';
import 'package:assets_client/features/auth/data/repositories/auth_repository_impl.dart';

late TokenManager tokenManager;

void main() async {
  await Hive.initFlutter();
  final configLocalDataSource = ConfigLocalDataSourceImpl();
  tokenManager = TokenManager(configDataSource: configLocalDataSource);
  await tokenManager.loadToken();
  runApp(MyApp(configLocalDataSource: configLocalDataSource));
}

class MyApp extends StatelessWidget {
  final ConfigLocalDataSource configLocalDataSource;

  const MyApp({
    Key? key,
    required this.configLocalDataSource,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final configRepository = ConfigRepositoryImpl(localDataSource: configLocalDataSource);

    return BlocProvider(
      create: (_) {
        final apiClient = _createApiClient();
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
            return const InitScreen();
          },
        ),
      ),
    );
  }

  ApiClient _createApiClient() {
    final dio = Dio();
    dio.interceptors.add(NetworkErrorInterceptor());
    dio.interceptors.add(
      AuthInterceptor(
        getToken: () => tokenManager.getToken() ?? '',
        refreshToken: () async => tokenManager.getToken() ?? '',
      ),
    );
    return ApiClient(dio);
  }
}
