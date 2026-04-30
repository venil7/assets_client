# Assets Client

Flutter app for portfolio & asset management.

## Setup

```bash
# Install dependencies
flutter pub get

# Generate code (models, API client)
dart run build_runner build --delete-conflicting-outputs

# Watch mode (for development)
dart run build_runner watch --delete-conflicting-outputs
```

## Run

```bash
# macOS
flutter run -d macos

# Android
flutter run -d android
```

## Build

```bash
# macOS release
flutter build macos --release

# Android APK
flutter build apk --release
flutter build apk --target-platform android-arm,android-arm64,android-x64 --split-per-abi

# Android App Bundle
flutter build appbundle --release
```

## Test

### Unit & Widget Tests
```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/api_client_test.dart

# Run with verbose output
flutter test -v

# Run with coverage report
flutter test --coverage
```

### API Client Integration Tests
Integration tests connect to running API server at `http://localhost:4020` (default).

**Prerequisites:**
- API server running on `http://localhost:4020`
- Credentials: `admin` / `admin` (or configure in test)

**Run:**
```bash
flutter test test/api_client_test.dart -v
```

**Configure for different server:**
Edit `test/api_client_test.dart` and modify:
```dart
config = ApiTestConfig(
  baseUrl: 'http://your-server:port',
  username: 'your-username',
  password: 'your-password',
);
```

**What's tested:**
- ✓ Login & authentication
- ✓ JWT token handling
- ✓ Profile endpoints
- ✓ Error handling (401, timeouts)
- ✓ Sequential requests
- ✓ Request/response logging
