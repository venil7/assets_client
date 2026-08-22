/// Tracks last summary refresh timestamp and fires auto-refresh on app resume.
class RefreshManager {
  DateTime? _lastRefresh;
  VoidCallback? _onAutoRefresh;

  /// Call after summary data successfully loaded.
  void markLoaded() {
    _lastRefresh = DateTime.now();
  }

  /// Call from app lifecycle on resume (Android only).
  /// Fires callback if [AutoRefreshThreshold] elapsed since last refresh.
  /// Does nothing on first call (fresh start — no auto-refresh).
  void onAppResume() {
    if (_lastRefresh == null) return; // first call == fresh start
    if (DateTime.now().difference(_lastRefresh!) >= autoRefreshThreshold) {
      _onAutoRefresh?.call();
    }
  }

  /// Register callback (from HomeScreen).
  void setRefreshCallback(VoidCallback? callback) {
    _onAutoRefresh = callback;
  }
}

typedef VoidCallback = void Function();

/// Configurable threshold for auto-refresh on app resume.
const autoRefreshThreshold = Duration(minutes: 5);

/// Singleton instance
final refreshManager = RefreshManager();
