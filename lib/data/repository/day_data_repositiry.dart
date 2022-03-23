import 'package:ak_test_app_1/data/api/api_util.dart';
import 'package:ak_test_app_1/domain/model/day.dart';
import 'package:ak_test_app_1/domain/repository/day_repository.dart';

class DayDataRepository extends DayRepository {
  final ApiUtil _apiUtil;

  DayDataRepository(this._apiUtil);

  @override
  Future<Day> getDay({required double latitude, required double longtitude}) {
    return _apiUtil.getDay(latitude: latitude, longitude: longtitude);
  }
}
