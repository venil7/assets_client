import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SettingsSessionTab extends StatelessWidget {
  const SettingsSessionTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        const Padding(
          padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
          child: Text(
            'Session',
            style: TextStyle(fontSize: 14, color: Colors.grey),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.logout, color: Colors.orange),
          title: const Text('Logout'),
          subtitle: const Text('Clear credentials only'),
          onTap: () => _logout(context),
        ),
        const Divider(indent: 16, endIndent: 16),
        ListTile(
          leading: const Icon(Icons.delete_forever, color: Colors.red),
          title: const Text('Reset everything'),
          subtitle: const Text('Clear API URL and credentials'),
          onTap: () => _clearAll(context),
        ),
      ],
    );
  }

  void _logout(BuildContext context) {
    context.read<ConfigBloc>().add(const ClearCredentialsEvent());
    tokenManager.clearToken();
    Navigator.of(context).pushReplacementNamed('/login');
  }

  void _clearAll(BuildContext context) {
    context.read<ConfigBloc>().add(const ClearConfigEvent());
    tokenManager.clearToken();
    Navigator.of(context).pushReplacementNamed('/api-url');
  }
}
