abstract class AuthRepository {
  /// User Sign Up
  Future<void> signUp({required String email, required String password});
}
