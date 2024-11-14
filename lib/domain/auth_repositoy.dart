abstract class AuthRepository {
  Future<String?> login({
    required String carNumber,
    required String password,
  });

  Future<void> logout();

  Future<bool> isAuthenticated();
}
