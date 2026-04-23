import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';

class InitScreen extends StatefulWidget {
  const InitScreen({Key? key}) : super(key: key);

  @override
  State<InitScreen> createState() => _InitScreenState();
}

class _InitScreenState extends State<InitScreen> {
  late TextEditingController _urlController;

  @override
  void initState() {
    super.initState();
    _urlController = TextEditingController();
  }

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Setup API Server'),
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Connect to API',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Enter your API server base URL',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey[600],
                ),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: _urlController,
                decoration: InputDecoration(
                  labelText: 'API Server URL',
                  hintText: 'https://api.example.com',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  prefixIcon: const Icon(Icons.link),
                ),
                keyboardType: TextInputType.url,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: BlocListener<ConfigBloc, ConfigState>(
                  listener: (context, state) {
                    if (state is ApiUrlSaved) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                          content: Text('API URL saved'),
                          duration: Duration(milliseconds: 800),
                        ),
                      );
                      Navigator.of(context).pushReplacementNamed('/home');
                    } else if (state is ConfigError) {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text('Error: ${state.message}'),
                          backgroundColor: Colors.red,
                        ),
                      );
                    }
                  },
                  child: BlocBuilder<ConfigBloc, ConfigState>(
                    builder: (context, state) {
                      return ElevatedButton(
                        onPressed: state is ConfigLoading
                            ? null
                            : () {
                                final url = _urlController.text.trim();
                                if (url.isEmpty) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('Enter API server URL'),
                                    ),
                                  );
                                  return;
                                }
                                context
                                    .read<ConfigBloc>()
                                    .add(SaveApiUrlEvent(url));
                              },
                        child: state is ConfigLoading
                            ? const SizedBox(
                                height: 20,
                                width: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : const Text('Continue'),
                      );
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
