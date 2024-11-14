import 'package:dio/dio.dart';
import 'package:feed_delivery/data/data_source/api_data_source.dart';
import 'package:feed_delivery/data/data_source/auth_data_source.dart';
import 'package:feed_delivery/presentation/utility/error_handler/error_handler.dart';
import 'package:flutter/foundation.dart';

class ApiDataSourceImpl implements ApiDataSource {
  final Dio dio;
  final ErrorHandler errorHandler;
  final AuthDataSource authDataSource;

  ApiDataSourceImpl({
    required this.dio,
    required this.errorHandler,
    required this.authDataSource,
    required String api,
  }) {
    // dio.interceptors.add(AuthInterceptor(authDataSource, dio, api));
    // dio.options
    //   ..baseUrl = api
    //   ..headers['Content-Type'] = 'application/json';
  }

  Future<Response> _makeRequest(
      Future<Response> Function() requestFunction) async {
    try {
      final response = await requestFunction();
      if (kDebugMode) {
        print(' _makeRequest response.statusCode ${response.statusCode}');
      }
      if (response.statusCode != 200 && response.statusCode != 201) {
        errorHandler.handleStatusCode(response.statusCode);
        throw Exception('Request failed with status: ${response.statusCode}');
      }
      return response;
    } catch (e) {
      errorHandler.handleException(e as Exception);
      throw Exception('Error making request');
    }
  }
}
