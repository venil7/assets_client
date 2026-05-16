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
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ConfigBloc, ConfigState>(
      builder: (context, state) {
        final isInitial = state is ConfigInitial || state is ConfigLoading;
        final isEmpty = state is UrlsMissing;

        if (isInitial) {
          return const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          );
        }

        return Scaffold(
          appBar: AppBar(title: const Text('Servers'), elevation: 0),
          body: isEmpty ? _buildEmptyState() : _buildUrlList(),
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () => _showAddUrlDialog(context),
            icon: const Icon(Icons.add),
            label: const Text('Add Server'),
          ),
        );
      },
    );
  }

  Widget _buildEmptyState() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.dns, size: 64, color: Colors.grey[400]),
            const SizedBox(height: 16),
            Text(
              'No servers configured',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.grey[600]),
            ),
            const SizedBox(height: 8),
            Text(
              'Add your API server URL to get started',
              style: TextStyle(fontSize: 14, color: Colors.grey[500]),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildUrlList() {
    return BlocBuilder<ConfigBloc, ConfigState>(
      builder: (context, state) {
        final urls = state is UrlSelected ? [state.url] : <String>[];
        return FutureBuilder<List<String>>(
          future: context.read<ConfigBloc>().repository.getAllUrls(),
          builder: (context, snapshot) {
            final urlList = snapshot.data ?? urls;
            if (urlList.isEmpty) {
              return _buildEmptyState();
            }
            return ListView.builder(
              padding: const EdgeInsets.only(top: 8, bottom: 80),
              itemCount: urlList.length,
              itemBuilder: (context, index) {
                final url = urlList[index];
                return Dismissible(
                  key: Key(url),
                  direction: DismissDirection.endToStart,
                  background: Container(
                    alignment: Alignment.centerRight,
                    padding: const EdgeInsets.only(right: 16),
                    color: Colors.red,
                    child: const Icon(Icons.delete, color: Colors.white),
                  ),
                  confirmDismiss: (_) async {
                    return await showDialog<bool>(
                      context: context,
                      builder: (ctx) => AlertDialog(
                        title: const Text('Remove server?'),
                        content: Text('Remove $url and all its saved accounts?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(false),
                            child: const Text('Cancel'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(true),
                            child: const Text('Remove', style: TextStyle(color: Colors.red)),
                          ),
                        ],
                      ),
                    ) ?? false;
                  },
                  onDismissed: (_) {
                    context.read<ConfigBloc>().add(RemoveUrlEvent(url));
                  },
                  child: ListTile(
                    leading: const Icon(Icons.dns),
                    title: Text(url, style: const TextStyle(fontSize: 14)),
                    trailing: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        IconButton(
                          icon: const Icon(Icons.delete_outline, color: Colors.red, size: 20),
                          tooltip: 'Remove server',
                          onPressed: () => _confirmRemoveServer(context, url),
                        ),
                        const Icon(Icons.chevron_right),
                      ],
                    ),
                    onTap: () {
                      context.read<ConfigBloc>().add(SelectUrlEvent(url));
                      Navigator.of(context).pushReplacementNamed(
                        '/login',
                        arguments: {'url': url},
                      );
                    },
                  ),
                );
              },
            );
          },
        );
      },
    );
  }

  void _showAddUrlDialog(BuildContext context) {
    final controller = TextEditingController();
    showDialog(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Add Server'),
        content: TextField(
          controller: controller,
          decoration: const InputDecoration(
            labelText: 'API Server URL',
            hintText: 'http://server/api/v1',
            border: OutlineInputBorder(),
            prefixIcon: Icon(Icons.link),
          ),
          keyboardType: TextInputType.url,
          autofocus: true,
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(),
            child: const Text('Cancel'),
          ),
          ElevatedButton(
            onPressed: () {
              var url = controller.text.trim();
              if (url.isEmpty) return;
              url = _normalizeUrl(url);
              if (!RegExp(_urlPattern).hasMatch(url)) {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Invalid URL format')),
                );
                return;
              }
              setBaseUrl(url);
              context.read<ConfigBloc>().add(AddUrlEvent(url));
              Navigator.of(ctx).pop();
              Navigator.of(context).pushReplacementNamed(
                '/login',
                arguments: {'url': url},
              );
            },
            child: const Text('Add'),
          ),
        ],
      ),
    );
  }

  Future<void> _confirmRemoveServer(BuildContext context, String url) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (ctx) => AlertDialog(
        title: const Text('Remove server?'),
        content: Text('Remove $url and all its saved accounts?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.of(ctx).pop(true),
            child: const Text('Remove', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
    if (confirmed == true && mounted) {
      context.read<ConfigBloc>().add(RemoveUrlEvent(url));
    }
  }

  String _normalizeUrl(String url) {
    url = url.replaceAll(RegExp(r'/+$'), '');
    url = url.replaceAll(RegExp(r'/api/v1$'), '');
    return url;
  }
}
