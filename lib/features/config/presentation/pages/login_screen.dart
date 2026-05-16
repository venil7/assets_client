import 'package:assets_client/features/config/data/models/saved_connection_model.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

class LoginScreen extends StatefulWidget {
  final String url;

  const LoginScreen({super.key, required this.url});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _showPassword = false;
  List<SavedConnectionModel> _savedConnections = [];

  @override
  void initState() {
    super.initState();
    _loadSavedConnections();
  }

  Future<void> _loadSavedConnections() async {
    final bloc = context.read<ConfigBloc>();
    final all = await bloc.repository.getAllConnections();
    if (!mounted) return;
    setState(() {
      _savedConnections = all
          .where((c) => c.apiUrl == widget.url && c.jwtToken.isNotEmpty)
          .toList();
    });
  }

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  void _login() {
    final username = _usernameController.text.trim();
    final password = _passwordController.text.trim();

    if (username.isEmpty || password.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Fill all fields')),
      );
      return;
    }

    context.read<ConfigBloc>().add(
      LoginWithCredentialsEvent(
        apiUrl: widget.url,
        username: username,
        password: password,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () => Navigator.of(context).pushNamed('/settings'),
          ),
        ],
      ),
      body: SafeArea(
        child: BlocListener<ConfigBloc, ConfigState>(
          listener: (context, state) {
            if (state is AuthSuccess) {
              Navigator.of(context).pushReplacementNamed('/home');
            } else if (state is AuthFailure) {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text('Login failed: ${state.message}'),
                  backgroundColor: Colors.red,
                ),
              );
            }
          },
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 24),
                Row(
                  children: [
                    Expanded(
                      child: Text(
                        widget.url,
                        style: TextStyle(fontSize: 13, color: Colors.grey[500]),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                    TextButton(
                      onPressed: () =>
                          Navigator.of(context).pushReplacementNamed('/api-url'),
                      child: const Text('Change'),
                    ),
                  ],
                ),
                const SizedBox(height: 16),
                const Text(
                  'Welcome Back',
                  style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Text(
                  'Pick a saved account or sign in with new credentials',
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
                if (_savedConnections.isNotEmpty) ...[
                  const SizedBox(height: 24),
                  const Text(
                    'Saved accounts',
                    style: TextStyle(fontSize: 14, color: Colors.grey),
                  ),
                  const SizedBox(height: 8),
                  ..._savedConnections.map(_buildSavedConnectionTile),
                  const SizedBox(height: 24),
                  const Divider(),
                  const SizedBox(height: 16),
                ],
                const SizedBox(height: 16),
                const Text(
                  'Sign in to new account',
                  style: TextStyle(fontSize: 14, color: Colors.grey),
                ),
                const SizedBox(height: 12),
                TextField(
                  controller: _usernameController,
                  decoration: const InputDecoration(
                    labelText: 'Username',
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),
                  ),
                ),
                const SizedBox(height: 16),
                TextField(
                  controller: _passwordController,
                  obscureText: !_showPassword,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: const OutlineInputBorder(),
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        _showPassword ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () =>
                          setState(() => _showPassword = !_showPassword),
                    ),
                  ),
                ),
                const SizedBox(height: 32),
                SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: BlocBuilder<ConfigBloc, ConfigState>(
                    builder: (context, state) {
                      final isLoading = state is AuthLoading;
                      return ElevatedButton(
                        onPressed: isLoading ? null : _login,
                        child: isLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(strokeWidth: 2),
                              )
                            : const Text('Sign In'),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSavedConnectionTile(SavedConnectionModel conn) {
    final expired = conn.expiresAt > 0 &&
        DateTime.now().millisecondsSinceEpoch >= conn.expiresAt;
    final dt = conn.expiresAt > 0
        ? DateTime.fromMillisecondsSinceEpoch(conn.expiresAt).toLocal()
        : null;

    String expiryText;
    Color expiryColor;
    if (expired) {
      expiryText = 'Expired';
      expiryColor = Colors.red;
    } else if (dt != null) {
      final remaining = dt.difference(DateTime.now());
      if (remaining.inDays > 7) {
        expiryText = 'Expires ${DateFormat('MMM d').format(dt)}';
        expiryColor = Colors.green;
      } else if (remaining.inDays > 0) {
        expiryText = 'Expires in ${remaining.inDays}d';
        expiryColor = Colors.orange;
      } else if (remaining.inHours > 0) {
        expiryText = 'Expires in ${remaining.inHours}h';
        expiryColor = Colors.orange;
      } else {
        expiryText = 'Expires soon';
        expiryColor = Colors.red;
      }
    } else {
      expiryText = '';
      expiryColor = Colors.grey;
    }

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          child: Text(conn.username.isNotEmpty
              ? conn.username[0].toUpperCase()
              : '?'),
        ),
        title: Text(conn.username),
        subtitle: expiryText.isNotEmpty
            ? Text(expiryText, style: TextStyle(fontSize: 12, color: expiryColor))
            : null,
        trailing: const Icon(Icons.login),
        enabled: !expired,
        onTap: expired
            ? null
            : () {
                context
                    .read<ConfigBloc>()
                    .add(SelectConnectionEvent(conn.id));
                Navigator.of(context).pushReplacementNamed('/home');
              },
      ),
    );
  }
}
