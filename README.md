# Assets Client

Flutter client for the Assets portfolio management API.
Backend: https://github.com/venil7/assets

## What is this

Assets Client is a macOS and Android app for tracking investment portfolios and individual assets. It connects to a self-hosted Assets API server, which handles all data storage and market data retrieval.

Because the backend is intended to be self-hosted, the client supports multiple server URLs and saved connections. You can add several API servers and switch between them without re-entering credentials.

## Features

- Server management: add, remove, and switch between multiple API endpoints
- JWT authentication with automatic token refresh
- Dashboard with summary metrics across all portfolios (total invested, realized P&L, break-even, FX impact, portfolio count)
- Interactive line chart with configurable range (1d, 5d, 1mo, 3mo, 6mo, 1y, 2y, 5y, 10y, ytd, max)
- Portfolio drill-down with per-portfolio metrics and chart
- Asset-level detail view with holdings, average price, break-even, P&L
- Transaction history per asset with buy/sell type badges
- Add, edit, and delete transactions
- Bulk transaction upload (CSV-style JSON array)
- Ticker search and price quote lookup
- Material 3 design with light and dark theme
- Multi-currency support (12 currencies)
- Settings: change password, update preferences (base currency, alt chart), view session info, switch user, logout

## Screenshots

[Screenshots to be added]

## Tech Stack

- Flutter / Dart
- BLoC for state management
- Clean Architecture (domain, data, presentation layers)
- Dio + Retrofit for HTTP and API client code generation
- Hive for local credential storage
- fl_chart for data visualization
- freezed + json_serializable for immutable models

## Quick Start

### Prerequisites

- Flutter SDK (see .fvmrc for pinned version)
- A running instance of the Assets API server

### Setup

```bash
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

### Run

```bash
flutter run -d macos
flutter run -d android
```

### Build

```bash
flutter build macos --release
flutter build apk --release
```

### Test

```bash
flutter test
flutter test --coverage
```
