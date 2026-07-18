import 'package:assets_client/core/services/biometric_service.dart';
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
            leading: const Icon(Icons.swap_horiz, color: Colors.blue),
            title: const Text('Switch user'),
            subtitle: const Text('Pick another saved account or sign in',
                style: TextStyle(fontSize: 12)),
            onTap: () => _switchUser(context),
          ),
          const Divider(indent: 16, endIndent: 16),
          ListTile(
            leading: const Icon(Icons.logout, color: Colors.orange),
            title: const Text('Logout'),
            subtitle: const Text('Remove this account, keep others'),
            onTap: () => _logout(context),
          ),
          const Divider(indent: 16, endIndent: 16),
          const _BiometricToggleTile(),
          const Divider(indent: 16, endIndent: 16),
          ListTile(
            leading: const Icon(Icons.delete_forever, color: Colors.red),
            title: const Text('Reset everything'),
            subtitle: const Text('Clear all servers and accounts'),
            onTap: () => _clearAll(context),
          ),
        ],
      ),
    );
  }

  void _switchUser(BuildContext context) {
    final url = tokenManager.activeApiUrl ?? '';
    context.read<ConfigBloc>().add(const SwitchUserEvent());
    Navigator.of(context).pushReplacementNamed(
      '/login',
      arguments: {'url': url},
    );
  }

  void _logout(BuildContext context) {
    context.read<ConfigBloc>().add(const LogoutEvent());
    final state = context.read<ConfigBloc>().state;
    if (state is UrlSelected) {
      Navigator.of(context).pushReplacementNamed(
        '/login',
        arguments: {'url': state.url},
      );
    } else if (state is UrlsMissing) {
      Navigator.of(context).pushReplacementNamed('/api-url');
    }
  }

  void _clearAll(BuildContext context) {
    context.read<ConfigBloc>().add(const ClearAllEvent());
    Navigator.of(context).pushReplacementNamed('/api-url');
  }
}

class _TokenExpiryTile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final expiresAt = tokenManager.tokenExpiresAt;
    final expired = tokenManager.isTokenExpired();
    final user = tokenManager.activeUsername;
    final url = tokenManager.activeApiUrl;

    String subtitle;
    IconData icon;
    Color color;

    if (expiresAt == null || expiresAt == 0) {
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

    final info = StringBuffer();
    if (user != null && user.isNotEmpty) info.write(user);
    if (url != null && url.isNotEmpty) {
      if (info.isNotEmpty) info.write(' @ ');
      info.write(url);
    }

    return Column(
      children: [
        if (info.isNotEmpty)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
            child: Text(
              info.toString(),
              style: const TextStyle(fontSize: 12, color: Colors.grey),
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ListTile(
          leading: Icon(icon, color: color),
          title: const Text('JWT Token'),
          subtitle: Text(subtitle, style: const TextStyle(fontSize: 12)),
        ),
      ],
    );
  }
}

class _BiometricToggleTile extends StatefulWidget {
  const _BiometricToggleTile();

  @override
  State<_BiometricToggleTile> createState() => _BiometricToggleTileState();
}

class _BiometricToggleTileState extends State<_BiometricToggleTile> {
  final _biometric = BiometricService();
  bool _enabled = false;
  bool _supported = false;
  bool _loading = true;

  @override
  void initState() {
    super.initState();
    _init();
  }

  Future<void> _init() async {
    final supported = await _biometric.isDeviceSupported();
    final enabled = await _biometric.isEnabled();

    if (mounted) {
      setState(() {
        _supported = supported;
        _enabled = enabled;
        _loading = false;
      });
    }
  }

  Future<void> _onToggle(bool value) async {
    if (value) {
      // Enabling — verify device support first.
      if (!_supported) {
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Biometrics not available on this device'),
              backgroundColor: Colors.orange,
            ),
          );
        }
        return;
      }

      // Ask user to confirm with biometric before enabling.
      final ok = await _biometric.authenticate(
        reason: 'Enable fingerprint unlock',
      );

      if (!ok) {
        // Auth failed or cancelled — don't enable.
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(
              content: Text('Fingerprint unlock not enabled'),
              backgroundColor: Colors.orange,
            ),
          );
        }
        return;
      }

      await _biometric.setEnabled(true);
    } else {
      // Disabling — no confirmation needed.
      await _biometric.setEnabled(false);
    }

    if (mounted) {
      setState(() => _enabled = value);
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_loading || !_supported) {
      return const SizedBox.shrink();
    }

    return SwitchListTile(
      secondary: const Icon(Icons.fingerprint),
      title: const Text('Fingerprint unlock'),
      subtitle: const Text('Require fingerprint to open app'),
      value: _enabled,
      onChanged: _onToggle,
    );
  }
}
