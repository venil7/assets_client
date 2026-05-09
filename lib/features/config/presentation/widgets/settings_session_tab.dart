import 'package:assets_client/core/services/token_manager_accessor.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class SettingsSessionTab extends StatefulWidget {
  const SettingsSessionTab({super.key});

  @override
  State<SettingsSessionTab> createState() => _SettingsSessionTabState();
}

class _SettingsSessionTabState extends State<SettingsSessionTab> {
  bool _refreshing = false;

  @override
  Widget build(BuildContext context) {
    return BlocListener<ConfigBloc, ConfigState>(
      listener: (context, state) {
        if (state is TokenRefreshing) {
          setState(() => _refreshing = true);
        } else if (state is TokenRefreshed) {
          setState(() => _refreshing = false);
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Token refreshed successfully'),
              backgroundColor: Colors.green,
            ),
          );
        } else if (state is TokenRefreshFailure) {
          setState(() => _refreshing = false);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Refresh failed: ${state.message}'),
              backgroundColor: Colors.red,
            ),
          );
        }
      },
      child: ListView(
        children: [
          const Padding(
            padding: EdgeInsets.fromLTRB(16, 16, 16, 8),
            child: Text(
              'Session',
              style: TextStyle(fontSize: 14, color: Colors.grey),
            ),
          ),
          _TokenExpiryTile(),
          if (_refreshing)
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: LinearProgressIndicator(),
            ),
          ListTile(
            leading: const Icon(Icons.refresh),
            title: const Text('Refresh token'),
            subtitle: const Text('Renew JWT token before expiry'),
            enabled: !_refreshing,
            onTap: _refreshing
                ? null
                : () =>
                      context.read<ConfigBloc>().add(const RefreshTokenEvent()),
          ),
          const Divider(indent: 16, endIndent: 16),
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
      ),
    );
  }

  void _logout(BuildContext context) {
    final state = context.read<ConfigBloc>().state;
    String? url;
    String? username;

    if (state is ConfigFound) {
      url = state.apiUrl;
      username = state.username;
    } else if (state is CredentialsMissing) {
      url = state.apiUrl;
      username = state.savedUsername;
    }

    context.read<ConfigBloc>().add(const ClearCredentialsEvent());
    Navigator.of(context).pushReplacementNamed(
      '/login',
      arguments: {'prefilledUrl': url, 'prefilledUsername': username},
    );
  }

  void _clearAll(BuildContext context) {
    context.read<ConfigBloc>().add(const ClearConfigEvent());
    Navigator.of(context).pushReplacementNamed('/api-url');
  }
}

class _TokenExpiryTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final expiresAt = tokenManager.tokenExpiresAt;
    final expired = tokenManager.isTokenExpired();

    String subtitle;
    IconData icon;
    Color color;

    if (expiresAt == null) {
      subtitle = 'No token loaded';
      icon = Icons.warning_amber;
      color = Colors.grey;
    } else if (expired) {
      subtitle = 'Token expired';
      icon = Icons.error;
      color = Colors.red;
    } else {
      final dt = DateTime.fromMillisecondsSinceEpoch(expiresAt).toLocal();
      final remaining = dt.difference(DateTime.now());
      final formatted = DateFormat('MMM d, yyyy  HH:mm').format(dt);
      if (remaining.inHours > 24) {
        subtitle = 'Expires ${remaining.inDays}d ${remaining.inHours % 24}h';
      } else if (remaining.inHours > 0) {
        subtitle = 'Expires ${remaining.inHours}h ${remaining.inMinutes % 60}m';
      } else {
        subtitle = 'Expires ${remaining.inMinutes}m';
      }
      subtitle = '$formatted ($subtitle)';
      icon = Icons.verified_user;
      color = tokenManager.shouldRefreshToken() ? Colors.orange : Colors.green;
    }

    return ListTile(
      leading: Icon(icon, color: color),
      title: const Text('JWT Token'),
      subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
    );
  }
}
