class ApiConstants {
  // Auth endpoints
  static const String loginEndpoint = '/login';
  static const String refreshTokenEndpoint = '/auth/refresh_token';

  // Profile endpoints
  static const String profileEndpoint = '/profile';

  // Preferences endpoints
  static const String prefsEndpoint = '/prefs';

  // User management endpoints (admin)
  static const String usersEndpoint = '/users';

  // Summary endpoint
  static const String summaryEndpoint = '/summary';

  // Portfolio endpoints
  static const String portfoliosEndpoint = '/portfolios';

  // Asset endpoints
  static const String assetsEndpoint = '/portfolios';

  // Transaction endpoints
  static const String transactionsEndpoint = '/tx';
  static const String transactionsListEndpoint = '/txs';

  // Lookup endpoints
  static const String lookupTickerEndpoint = '/lookup/ticker';
  static const String lookupQuoteEndpoint = '/lookup/quote';
  static const String lookupFxEndpoint = '/lookup/fx';

  // Headers
  static const String authorizationHeader = 'Authorization';
  static const String contentTypeHeader = 'Content-Type';
  static const String bearerPrefix = 'Bearer';
}
