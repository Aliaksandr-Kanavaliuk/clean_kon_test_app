import 'package:ak_test_app_1/data/day.dart';

abstract class DayRepository {
  Future<Day> getDay({
    required double latitude,
    required double longitude,
  });
}
