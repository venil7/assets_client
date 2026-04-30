import 'package:assets_client/core/services/token_manager.dart';

TokenManager? _instance;

void initTokenManager(TokenManager instance) {
  _instance = instance;
}

TokenManager get tokenManager => _instance!;
