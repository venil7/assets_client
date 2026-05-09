import 'dart:convert';

class JwtDecoder {
  static Map<String, dynamic> decodePayload(String token) {
    final parts = token.split('.');
    if (parts.length != 3) {
      throw FormatException('Invalid JWT: expected 3 parts, got ${parts.length}');
    }
    return _decodeBase64UrlJson(parts[1]);
  }

  static int? getExpiry(String token) {
    final payload = decodePayload(token);
    return payload['exp'] as int?;
  }

  static Map<String, dynamic> _decodeBase64UrlJson(String str) {
    final normalized = base64Url.normalize(str);
    final decoded = base64Url.decode(normalized);
    return jsonDecode(utf8.decode(decoded)) as Map<String, dynamic>;
  }
}