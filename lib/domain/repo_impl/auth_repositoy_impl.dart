import 'package:feed_delivery/data/data_source/api_data_source.dart';
import 'package:feed_delivery/data/data_source/auth_data_source.dart';
import 'package:feed_delivery/data/data_source/mock_data_source.dart';
import 'package:feed_delivery/domain/auth_repositoy.dart';

class AuthRepositoryImpl implements AuthRepository {
  final AuthDataSource authDataSource;
  final ApiDataSource apiDataSource;
  final MockDataSource mockDataSource;

  AuthRepositoryImpl({
    required this.authDataSource,
    required this.apiDataSource,
    required this.mockDataSource,
  });
  @override
  Future<bool> isAuthenticated() async {
    final String? token = await authDataSource.getAuthToken();
    if (token != null) {
      return await authDataSource.verifyToken(token);
    }
    return false;
  }

  @override
  Future<String?> login(
      {required String carNumber, required String password}) async {
    final String? authToken = await mockDataSource.authenticate(
      carNumber: carNumber,
      password: password,
    );
    if (authToken == null) return '';
    authDataSource.saveAccessToken(authToken);
    return authToken;
  }

  @override
  Future<void> logout() async {
    await authDataSource.clearTokens();
  }
}
