abstract class AuthDataSource {
  Future<String?> getAuthToken();

  Future<void> saveAccessToken(String authToken);

  Future<void> clearTokens();

  Future<bool> verifyToken(token);

  Future<String?> authenticate({
    required String carNumber,
    required String password,
  });
}
