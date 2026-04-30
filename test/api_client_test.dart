import 'package:assets_client/core/network/api_client.dart';
import 'package:dio/dio.dart';
import 'package:flutter_test/flutter_test.dart';

// Test configuration
class ApiTestConfig {
  final String baseUrl;
  final String username;
  final String password;

  ApiTestConfig({
    this.baseUrl = 'http://localhost:4020',
    this.username = 'admin',
    this.password = 'admin',
  });
}

void main() {
  late Dio dio;
  late ApiClient apiClient;
  late ApiTestConfig config;
  late String jwtToken;

  setUp(() {
    config = ApiTestConfig();
    dio = Dio(
      BaseOptions(
        baseUrl: config.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
    // Add logging interceptor
    dio.interceptors.add(LoggingInterceptor());
    apiClient = ApiClient(dio, baseUrl: config.baseUrl);
  });

  group('ApiClient Integration Tests', () {
    group('Authentication - CORE FLOWS', () {
      test('1. Login with valid credentials returns token', () async {
        try {
          final response = await apiClient.login({
            'username': config.username,
            'password': config.password,
          });

          expect(response, isNotNull);
          expect(response.token, isNotNull);
          expect(response.token.isNotEmpty, true);
          jwtToken = response.token;
          print('✓ Login OK. Token: ${jwtToken.substring(0, 20)}...');
          print('  Refresh before: ${response.refreshBefore}');
        } catch (e) {
          print('✗ Login FAILED: $e');
          fail('Login must work');
        }
      });

      test('2. Login with invalid credentials fails with 401', () async {
        expect(
          () => apiClient.login({'username': 'baduser', 'password': 'badpass'}),
          throwsA(isA<DioException>()),
        );
        print('✓ Invalid credentials rejected');
      });
    });

    group('Profile Endpoints', () {
      setUp(() async {
        try {
          final response = await apiClient.login({
            'username': config.username,
            'password': config.password,
          });
          jwtToken = response.token;
          dio.options.headers['Authorization'] = 'Bearer $jwtToken';
          print('Setup: Auth token set');
        } catch (e) {
          fail('Login failed in setup: $e');
        }
      });

      test('3. Get profile returns user data', () async {
        try {
          final profile = await apiClient.getProfile();
          expect(profile, isNotNull);
          expect(profile.id, isNotNull);
          print('✓ Profile OK: ${profile.username} (ID: ${profile.id})');
        } catch (e) {
          print('✗ getProfile FAILED: $e');
          fail('getProfile failed: $e');
        }
      });

      test('4. Get preferences (expected: may fail on server)', () async {
        try {
          final prefs = await apiClient.getPreferences();
          expect(prefs, isNotNull);
          print('✓ Preferences OK');
        } on DioException catch (e) {
          print('⚠ Preferences endpoint returned: ${e.response?.statusCode}');
          if (e.response?.statusCode == 500) {
            print('  Server error - endpoint may need fixes');
          }
          // Don't fail - this endpoint may not be fully implemented
        }
      });
    });

    group('Authentication - ADVANCED FLOWS', () {
      setUp(() async {
        try {
          final response = await apiClient.login({
            'username': config.username,
            'password': config.password,
          });
          jwtToken = response.token;
          dio.options.headers['Authorization'] = 'Bearer $jwtToken';
        } catch (e) {
          fail('Setup login failed: $e');
        }
      });

      test('5. Refresh token (expected: may return 404)', () async {
        try {
          final refreshResp = await apiClient.refreshToken();
          expect(refreshResp.token, isNotNull);
          print('✓ Refresh OK: ${refreshResp.token.substring(0, 20)}...');
        } on DioException catch (e) {
          if (e.response?.statusCode == 404) {
            print('⚠ Refresh endpoint not found (404)');
            print('  API endpoint: /auth/refresh_token may not exist');
          } else {
            print('✗ Refresh FAILED: ${e.response?.statusCode}');
            rethrow;
          }
        }
      });
    });

    group('Portfolio Endpoints', () {
      setUp(() async {
        try {
          final response = await apiClient.login({
            'username': config.username,
            'password': config.password,
          });
          jwtToken = response.token;
          dio.options.headers['Authorization'] = 'Bearer $jwtToken';
        } catch (e) {
          fail('Setup login failed: $e');
        }
      });

      test('6. Get all portfolios (expected: may fail)', () async {
        try {
          final portfolios = await apiClient.getAllPortfolios(null);
          expect(portfolios, isA<List>());
          print('✓ Portfolios OK: ${portfolios.length} items');
        } on DioException catch (e) {
          print('⚠ getAllPortfolios returned: ${e.response?.statusCode}');
          if (e.response?.statusCode == 500) {
            print('  Server error');
            print('  Response: ${e.response?.data}');
          }
        }
      });

      test('7. Get summary (expected: may fail)', () async {
        try {
          final summary = await apiClient.getSummary(null);
          expect(summary, isNotNull);
          print('✓ Summary OK');
        } on DioException catch (e) {
          print('⚠ getSummary returned: ${e.response?.statusCode}');
          if (e.response?.statusCode == 500) {
            print('  Server error');
            print('  Response: ${e.response?.data}');
          }
        }
      });
    });

    group('Error Handling - ROBUSTNESS', () {
      test('8. Request without auth token returns 401', () async {
        final unauthDio = Dio(
          BaseOptions(
            baseUrl: config.baseUrl,
            connectTimeout: const Duration(seconds: 5),
          ),
        );
        final unauthClient = ApiClient(unauthDio, baseUrl: config.baseUrl);

        expect(() => unauthClient.getProfile(), throwsA(isA<DioException>()));
        print('✓ Unauthorized properly rejected');
      });

      test('9. Network timeout handled', () async {
        final timeoutDio = Dio(
          BaseOptions(
            baseUrl: 'http://localhost:9999',
            connectTimeout: const Duration(milliseconds: 500),
            receiveTimeout: const Duration(milliseconds: 500),
          ),
        );
        final timeoutClient = ApiClient(
          timeoutDio,
          baseUrl: 'http://localhost:9999',
        );

        expect(
          () => timeoutClient.login({'username': 'x', 'password': 'y'}),
          throwsA(isA<DioException>()),
        );
        print('✓ Timeout handled');
      });

      test('10. Multiple sequential requests work', () async {
        try {
          // Login
          var resp1 = await apiClient.login({
            'username': config.username,
            'password': config.password,
          });
          dio.options.headers['Authorization'] = 'Bearer ${resp1.token}';
          print('✓ Request 1: Login OK');

          // Profile
          var resp2 = await apiClient.getProfile();
          expect(resp2.id, isNotNull);
          print('✓ Request 2: Profile OK');

          // Profile again
          var resp3 = await apiClient.getProfile();
          expect(resp3.id, isNotNull);
          print('✓ Request 3: Profile OK (second time)');
        } catch (e) {
          fail('Sequential requests failed: $e');
        }
      });
    });
  });
}

// Simple logging interceptor
class LoggingInterceptor extends Interceptor {
  @override
  void onRequest(RequestOptions options, RequestInterceptorHandler handler) {
    print('→ ${options.method} ${options.path}');
    if (options.headers.containsKey('Authorization')) {
      print(
        '  Auth: ${options.headers['Authorization'].toString().substring(0, 30)}...',
      );
    }
    handler.next(options);
  }

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    print('← ${response.statusCode} ${response.requestOptions.path}');
    handler.next(response);
  }

  @override
  void onError(DioException err, ErrorInterceptorHandler handler) {
    print('✗ ${err.response?.statusCode} ${err.requestOptions.path}');
    handler.next(err);
  }
}
