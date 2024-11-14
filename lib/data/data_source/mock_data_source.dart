abstract class MockDataSource {
  Future<String?> authenticate({
    required String carNumber,
    required String password,
  });
}
