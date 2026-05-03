import 'package:assets_client/core/services/dio_accessor.dart';
import 'package:assets_client/features/config/presentation/bloc/config_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

const _urlPattern = r'^https?://[^/]+';

class ApiUrlScreen extends StatefulWidget {
  const ApiUrlScreen({super.key});

  @override
  State<ApiUrlScreen> createState() => _ApiUrlScreenState();
}

class _ApiUrlScreenState extends State<ApiUrlScreen> {
  final _urlController = TextEditingController();

  @override
  void dispose() {
    _urlController.dispose();
    super.dispose();
  }

  String _normalizeUrl(String url) {
    url = url.replaceAll(RegExp(r'/+$'), '');
    url = url.replaceAll(RegExp(r'/api/v1$'), '');
    return url;
  }

  void _saveApiUrl() {
    var url = _urlController.text.trim();

    if (url.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Enter API URL')),
      );
      return;
    }

    if (!RegExp(_urlPattern).hasMatch(url)) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Invalid URL. Use format: http://server/api/v1'),
        ),
      );
      return;
    }

    url = _normalizeUrl(url);

    setBaseUrl(url);
    context.read<ConfigBloc>().add(SaveApiUrlEvent(url));

    Navigator.of(context).pushReplacementNamed(
      '/login',
      arguments: {'prefilledUrl': url},
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('API Configuration'), elevation: 0),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                'Connect to API',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text(
                'Enter your API server URL to get started',
                style: TextStyle(fontSize: 16, color: Colors.grey[600]),
              ),
              const SizedBox(height: 40),
              TextField(
                controller: _urlController,
                decoration: const InputDecoration(
                  labelText: 'API Server URL',
                  hintText: 'http://server/api/v1',
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                  prefixIcon: Icon(Icons.link),
                ),
                keyboardType: TextInputType.url,
                autofocus: true,
              ),
              const SizedBox(height: 32),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: _saveApiUrl,
                  child: const Text('Continue'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
