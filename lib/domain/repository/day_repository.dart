// import 'package:ak_test_app_1/data/day.dart';

import 'package:ak_test_app_1/domain/model/day.dart';

abstract class DayRepository {
  Future<Day> getDay({
    required double latitude,
    required double longitude,
  });
}
