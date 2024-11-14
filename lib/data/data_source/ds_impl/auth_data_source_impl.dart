import 'package:feed_delivery/data/data_source/auth_data_source.dart';
import 'package:feed_delivery/presentation/utility/error_handler/error_handler.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final FlutterSecureStorage secureStorage;
  final ErrorHandler errorHandler;

  AuthDataSourceImpl({
    required this.secureStorage,
    required this.errorHandler,
  });

  @override
  Future<void> clearTokens() async {
    try {
      await secureStorage.delete(key: 'auth_token');
    } catch (e) {
      throw errorHandler.handle(e);
    }
  }

  @override
  Future<String?> getAuthToken() async {
    try {
      return await secureStorage.read(key: 'auth_token');
    } catch (e) {
      throw errorHandler.handle(e);
    }
  }

  @override
  Future<void> saveAccessToken(String authToken) async {
    try {
      await secureStorage.write(key: 'auth_token', value: authToken);
    } catch (e) {
      throw errorHandler.handle(e);
    }
  }

  @override
  Future<String?> authenticate({
    required String carNumber,
    required String password,
  }) async {
    return '';
  }

  @override
  Future<bool> verifyToken(token) async {
    return false;
  }
}
