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

```bash
flutter test
flutter test --coverage
```
