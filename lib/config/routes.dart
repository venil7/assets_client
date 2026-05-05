import 'package:assets_client/core/network/api_client.dart';
import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/features/config/presentation/pages/api_url_screen.dart';
import 'package:assets_client/features/config/presentation/pages/init_screen.dart';
import 'package:assets_client/features/config/presentation/pages/login_screen.dart';
import 'package:assets_client/features/config/presentation/pages/settings_screen.dart';
import 'package:assets_client/features/home/data/repositories/home_repository_impl.dart';
import 'package:assets_client/features/home/presentation/bloc/home_bloc.dart';
import 'package:assets_client/features/home/presentation/pages/home_screen.dart';
import 'package:assets_client/features/portfolio/data/datasources/portfolio_remote_data_source.dart';
import 'package:assets_client/features/portfolio/data/repositories/portfolio_repository_impl.dart';
import 'package:assets_client/features/portfolio/presentation/bloc/portfolio_bloc.dart';
import 'package:assets_client/features/portfolio/presentation/pages/portfolio_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/init':
        return MaterialPageRoute(builder: (_) => const InitScreen());
      case '/api-url':
        return MaterialPageRoute(builder: (_) => const ApiUrlScreen());
      case '/login':
        final args = settings.arguments as Map<String, dynamic>?;
        return MaterialPageRoute(
          builder: (_) => LoginScreen(
            prefilledUrl: args?['prefilledUrl'],
            prefilledUsername: args?['prefilledUsername'],
          ),
        );
      case '/home':
        return MaterialPageRoute(
          builder: (_) {
            final apiClient = ApiClient(dioInstance);
            final homeRepo = HomeRepositoryImpl(apiClient: apiClient);
            return BlocProvider(
              create: (_) =>
                  HomeBloc(repository: homeRepo)..add(LoadHomeEvent()),
              child: const HomeScreen(),
            );
          },
        );
      case '/settings':
        return MaterialPageRoute(
          builder: (_) => const SettingsScreen(),
        );
      case '/portfolio':
        final portfolioId = settings.arguments as int;
        return MaterialPageRoute(
          builder: (_) {
            final apiClient = ApiClient(dioInstance);
            final dataSource =
                PortfolioRemoteDataSourceImpl(apiClient: apiClient);
            final repo = PortfolioRepositoryImpl(
              remoteDataSource: dataSource,
            );
            return BlocProvider(
              create: (_) => PortfolioBloc(repository: repo)
                ..add(LoadPortfolioEvent(portfolioId: portfolioId)),
              child: PortfolioScreen(portfolioId: portfolioId),
            );
          },
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
