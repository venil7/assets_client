/// In-memory flag: true when user has passed biometric check this session.
/// Used by lifecycle observer to decide whether to re-lock on app resume.
class BiometricServiceSession {
  static bool authenticated = false;
}
