import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:assets_client/config/routes.dart';
import 'package:assets_client/config/theme.dart';
import 'package:assets_client/features/config/data/datasources/config_local_data_source.dart';
import 'package:assets_client/features/config/data/repositories/config_repository_impl.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';
import 'package:assets_client/features/config/presentation/pages/init_screen.dart';

void main() async {
  await Hive.initFlutter();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ConfigBloc(
        repository: ConfigRepositoryImpl(
          localDataSource: ConfigLocalDataSourceImpl(),
        ),
      )..add(const CheckConfigEvent()),
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
            return const InitScreen();
          },
        ),
      ),
    );
  }
}
