# AI Agent Instructions for Assets Client

## Project Overview

**Assets Client** is a Flutter-based API client application for macOS and Android that displays customer net worth information including portfolios, individual assets, transactions, and financial metrics. The app features a modern, slick UI with data visualization showing portfolio daily changes.

### Target Platforms
- **macOS** (desktop)
- **Android** (mobile)

### Key Features
1. **User Authentication**: API server URL configuration → username/password login → JWT token-based auth
2. **Portfolio Management**: Display user's portfolio and asset composition
3. **Transactions**: Show buy/sell transaction history with details
4. **Data Visualization**: Graphs depicting portfolio daily changes and trends
5. **Metadata**: Display profit/loss and other financial metrics

---

## Architecture & Technology Stack

### Architecture Pattern: Clean Architecture + BLoC
The app should follow **Clean Architecture** with **BLoC** for state management:
- **Presentation Layer**: Flutter UI widgets, screens, pages
- **Domain Layer**: Business entities, repository interfaces, use cases
- **Data Layer**: API clients, repositories, data sources (local & remote)
- **BLoC Layer**: Business Logic Components managing state and events

### Recommended Dependencies (to be added)

**State Management:**
- `flutter_bloc: ^8.1.0+` - BLoC pattern implementation
- `equatable: ^2.0.0+` - Value equality for BLoC events/states

**Networking:**
- `dio: ^5.0.0+` - HTTP client with interceptors for JWT tokens
- `retrofit: ^4.0.0+` - REST client code generation

**Local Storage:**
- `hive: ^2.2.0+` - Local key-value storage for API URL and JWT tokens
- `hive_flutter: ^1.1.0+`

**Data Visualization:**
- `fl_chart: ^0.63.0+` - Charts and graphs for portfolio visualization
- `intl: ^0.19.0+` - Internationalization (date/time formatting)

**UI & UX:**
- `google_fonts: ^6.0.0+` - Modern typography
- `flutter_native_splash: ^2.3.0+` - Native splash screens

**Utilities:**
- `freezed_annotation: ^2.4.0+` & `freezed: ^2.4.0+` (dev) - Code generation for models
- `json_serializable: ^6.7.0+` (dev) - JSON serialization code generation
- `build_runner: ^2.4.0+` (dev) - Code generation runner

---

## Project Structure

```
lib/
├── main.dart                          # App entry point
├── config/
│   ├── routes.dart                   # Navigation routing
│   └── theme.dart                    # App theming (colors, typography)
├── core/
│   ├── constants/                    # App-wide constants
│   ├── errors/                       # Custom exceptions
│   └── network/
│       └── interceptors.dart         # JWT token handling
├── features/
│   ├── auth/
│   │   ├── data/
│   │   │   ├── datasources/          # API calls, local storage
│   │   │   ├── models/               # JSON serializable models
│   │   │   └── repositories/         # Repository implementations
│   │   ├── domain/
│   │   │   ├── entities/             # Pure Dart classes
│   │   │   ├── repositories/         # Repository interfaces
│   │   │   └── usecases/             # Business logic
│   │   └── presentation/
│   │       ├── bloc/                 # BLoC for auth state
│   │       ├── pages/                # Auth screens (login, setup)
│   │       └── widgets/              # Auth-related UI components
│   ├── portfolio/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   ├── assets/
│   │   ├── data/
│   │   ├── domain/
│   │   └── presentation/
│   └── transactions/
│       ├── data/
│       ├── domain/
│       └── presentation/
└── shared/
    ├── widgets/                      # Reusable UI components
    └── utils/                        # Helper functions
```

---

## Development Workflow

### Setup Commands

```bash
# Install dependencies
flutter pub get

# Generate code (models, BLoC, networking)
flutter pub run build_runner build --delete-conflicting-outputs

# Run on macOS
flutter run -d macos

# Run on Android
flutter run -d android

# Run tests
flutter test
```

### Code Generation
When modifying models with `@freezed` or `@JsonSerializable`:
```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

For continuous development with file watching:
```bash
flutter pub run build_runner watch --delete-conflicting-outputs
```

---

## API Integration (Placeholder)

The app communicates with an external API. Detailed API documentation will be provided separately. Key integration points:

### Authentication Endpoints
- **Server Setup**: User provides API server base URL
- **Login**: `POST /auth/login` - username/password → JWT token
- **Token Refresh**: `POST /auth/refresh` - maintain session

### Data Endpoints (Expected structure)
- **Portfolio**: `GET /portfolio` - user's current portfolio
- **Assets**: `GET /assets` - individual asset details
- **Transactions**: `GET /transactions` - buy/sell history
- **Metrics**: `GET /metrics` - profit/loss, daily changes

### JWT Token Handling
- **Storage**: Tokens stored securely using Hive
- **Interceptor**: Dio interceptor automatically attaches JWT to requests
- **Refresh**: Automatic token refresh on 401 responses

---

## UI/UX Guidelines

### Design Principles
- **Modern & Slick**: Use Material Design 3 (Material 3 support in Flutter)
- **Dark Mode**: Support both light and dark themes
- **Responsive**: Adapt layouts for macOS (larger screens) and Android (varied sizes)
- **Smooth Animations**: Use Flutter's animation widgets for polished transitions

### Key Screens
1. **Splash/Init Screen**: Load API configuration
2. **Server Setup Screen**: Input API server URL
3. **Login Screen**: Username/password authentication
4. **Dashboard**: Portfolio overview with key metrics
5. **Portfolio Details**: Asset breakdown and composition
6. **Charts**: Portfolio value over time (daily changes)
7. **Transactions**: Transaction history with filters
8. **Settings**: API URL, logout, app preferences

### Chart Implementation
Use `fl_chart` for:
- **Line Charts**: Portfolio value over time (daily changes)
- **Pie/Doughnut Charts**: Asset allocation breakdown
- **Bar Charts**: Performance comparisons

---

## Data Models & Serialization

Use `freezed` and `json_serializable` for models:

```dart
import 'package:freezed_annotation/freezed_annotation.dart';

part 'user.freezed.dart';
part 'user.g.dart';

@freezed
class User with _$User {
  const factory User({
    required String id,
    required String username,
    required String email,
  }) = _User;

  factory User.fromJson(Map<String, Object?> json) =>
      _$UserFromJson(json);
}
```

All models should be immutable using `@freezed`.

---

## State Management (BLoC)

### BLoC Pattern for Features

Each feature (auth, portfolio, etc.) has its own BLoC:
- **Events**: User actions (e.g., `LoginRequested`, `LogoutRequested`)
- **States**: UI states (e.g., `AuthInitial`, `AuthLoading`, `AuthSuccess`)
- **Transitions**: How events transform states

Example BLoC usage in UI:
```dart
BlocBuilder<AuthBloc, AuthState>(
  builder: (context, state) {
    if (state is AuthLoading) return LoadingWidget();
    if (state is AuthSuccess) return Dashboard();
    if (state is AuthFailure) return ErrorWidget(state.message);
    return LoginScreen();
  },
)
```

---

## Error Handling

### Exception Hierarchy
```
AppException (abstract)
├── AuthException
│   ├── InvalidCredentialsException
│   └── TokenExpiredException
├── NetworkException
│   ├── ConnectionTimeoutException
│   └── ServerException
└── ValidationException
```

BLoC emits `Failure` states with user-friendly error messages.

---

## Testing Strategy

### Unit Tests
- **Models**: Serialization/deserialization tests
- **Use Cases**: Business logic tests with mocked repositories
- **Repositories**: Data source interaction tests

### Widget Tests
- **Screens**: UI rendering and interaction
- **Forms**: Input validation and submission
- **Charts**: Data visualization accuracy

### Integration Tests
- **Authentication Flow**: Login → token storage → API calls
- **Portfolio Loading**: Fetch and display data

Test commands:
```bash
flutter test                    # All tests
flutter test --coverage        # With coverage report
```

---

## Platform-Specific Considerations

### macOS
- **Window Size**: Adapt UI for desktop (larger screen space)
- **Keyboard Navigation**: Support tab navigation
- **Menu Bar**: Consider platform-specific menu integration
- **File Paths**: Use path providers for configuration storage
- **Target**: Requires macOS 10.13 or higher

### Android
- **Permissions**: Request camera/storage if needed
- **Screen Sizes**: Handle various phone sizes and orientations
- **Back Navigation**: Implement proper back button handling
- **Battery**: Optimize background processes
- **Target**: Minimum Android API 21+

---

## Key Development Patterns

### Provider Pattern for Shared State
Use `BlocProvider` for global BLoCs:
```dart
MultiBlocProvider(
  providers: [
    BlocProvider(create: (_) => AuthBloc()),
    BlocProvider(create: (_) => PortfolioBloc()),
  ],
  child: const MyApp(),
)
```

### Routing Architecture
- Use named routes with `RouteGenerator` for type-safe navigation
- BLoC can trigger navigation through context.read<NavigationBloc>()

### Network Interceptor Pattern
Dio interceptor handles:
- JWT token injection in headers
- Token refresh on 401 responses
- Request/response logging (debug mode)
- Error transformation to app exceptions

---

## Common Development Tasks

### Adding a New Feature
1. Create folder structure under `lib/features/{feature}/`
2. Start with domain layer (entities, repository interfaces)
3. Implement data layer (models, datasources, repository)
4. Add BLoC (events, states, logic)
5. Create presentation layer (pages, widgets, bloc listener/builder)
6. Add routing and theme support

### Adding a New API Endpoint
1. Add method to API datasource (Retrofit)
2. Update repository implementation
3. Add use case if needed
4. Create/update corresponding BLoC events and states
5. Update presentation layer to use new state

### Debugging
- **Flutter DevTools**: `flutter pub global activate devtools && devtools`
- **Dio Logging**: Enable in network config for request/response logs
- **BLoC Logger**: Use `flutter_bloc` observer for state transitions
- **Hive Inspector**: View local storage data

---

## Code Quality & Linting

- **Analyzer**: Follows `flutter_lints: ^6.0.0` rules
- **Format**: Run `flutter format .` before committing
- **Lint**: Run `flutter analyze` to check code quality
- **Tests**: Maintain >80% code coverage for critical features

---

## Build & Release

### macOS Build
```bash
flutter build macos --release
```
Output: `build/macos/Build/Products/Release/assets_client.app`

### Android Build
```bash
flutter build apk --release      # APK
flutter build appbundle --release # App Bundle for Play Store
```

Requires keystore configuration for signing.

---

## Important Notes for AI Agents

0. **always use caveman skill** make sure to use Caveman skill
1. **Always generate code**: After modifying models or adding new features, run `build_runner` to generate serialization/deserialization code
2. **BLoC for state**: Every feature should have a BLoC managing its state
3. **Clean Architecture**: Separate concerns across data, domain, and presentation layers
4. **Error handling**: Transform API errors into appropriate BLoC failure states
5. **Immutability**: Use `@freezed` for all data models
6. **Testing**: Write tests for business logic and critical UI flows
7. **Assets & Localization**: When adding assets, update `pubspec.yaml` and rebuild
8. **Platform checks**: Consider macOS vs Android differences in UI and performance

---

## Useful Resources

- [Flutter Documentation](https://docs.flutter.dev/)
- [BLoC Library](https://bloclibrary.dev/)
- [Clean Architecture](https://resocoder.com/blog/flutter-clean-architecture-tdd)
- [Dio HTTP Client](https://pub.dev/packages/dio)
- [fl_chart Documentation](https://pub.dev/packages/fl_chart)
