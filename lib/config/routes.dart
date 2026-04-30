import 'package:assets_client/features/config/presentation/pages/api_url_screen.dart';
import 'package:assets_client/features/config/presentation/pages/init_screen.dart';
import 'package:assets_client/features/config/presentation/pages/login_screen.dart';
import 'package:assets_client/features/home/presentation/pages/home_screen.dart';
import 'package:flutter/material.dart';

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
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(child: Text('No route defined for ${settings.name}')),
          ),
        );
    }
  }
}
