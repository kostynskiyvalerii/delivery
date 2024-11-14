import 'package:feed_delivery/data/data_source/mock_data_source.dart';

class MockDataSourceImpl implements MockDataSource {
  MockDataSourceImpl();

  @override
  Future<String?> authenticate({
    required String carNumber,
    required String password,
  }) async {
    await Future.delayed(const Duration(milliseconds: 500));
    Map<String, String> cars = {
      "driver_1": "AA 1234 AA",
      "driver_2": "AA 4321 AA",
    };

    final driver = cars.entries.firstWhere(
      (entry) => entry.value == carNumber,
      orElse: () => const MapEntry("", ""),
    );

    return driver.key.isNotEmpty ? driver.key : null;
  }
}
