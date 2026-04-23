import 'package:flutter/material.dart';
import 'package:assets_client/features/config/presentation/pages/init_screen.dart';
import 'package:assets_client/features/home/presentation/pages/home_screen.dart';

class RouteGenerator {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/init':
        return MaterialPageRoute(builder: (_) => const InitScreen());
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
