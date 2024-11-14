import 'package:dio/dio.dart';
import 'package:feed_delivery/data/data_source/api_data_source.dart';
import 'package:feed_delivery/data/data_source/auth_data_source.dart';
import 'package:feed_delivery/data/data_source/ds_impl/api_data_source_impl.dart';
import 'package:feed_delivery/data/data_source/ds_impl/auth_data_source_impl.dart';
import 'package:feed_delivery/data/data_source/ds_impl/mock_data_source_impl.dart';
import 'package:feed_delivery/data/data_source/mock_data_source.dart';
import 'package:feed_delivery/domain/auth_repositoy.dart';
import 'package:feed_delivery/domain/repo_impl/auth_repositoy_impl.dart';
import 'package:feed_delivery/presentation/utility/error_handler/error_handler.dart';
import 'package:feed_delivery/presentation/utility/error_handler/error_handler_impl.dart';

import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';

Future<void> initApp() async {
  final Dio dio = Dio();

  const FlutterSecureStorage secureStorage = FlutterSecureStorage();

  final ErrorHandler errorHandler =
      GetIt.instance.registerSingleton<ErrorHandler>(ErrorHandlerImpl());

  final AuthDataSource authDataSource =
      GetIt.instance.registerSingleton<AuthDataSource>(
    AuthDataSourceImpl(
      errorHandler: errorHandler,
      secureStorage: secureStorage,
    ),
  );

  final MockDataSource mockDataSource =
      GetIt.instance.registerSingleton<MockDataSource>(MockDataSourceImpl());

  final ApiDataSource apiDataSource =
      GetIt.instance.registerSingleton<ApiDataSource>(
    ApiDataSourceImpl(
      dio: dio,
      errorHandler: errorHandler,
      authDataSource: authDataSource,
      api: 'https:www:',
    ),
  );

  GetIt.instance.registerSingleton<AuthRepository>(AuthRepositoryImpl(
    authDataSource: authDataSource,
    apiDataSource: apiDataSource,
    mockDataSource: mockDataSource,
  ));
}
