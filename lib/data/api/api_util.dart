import 'package:ak_test_app_1/data/api/request/get_day_body.dart';
import 'package:ak_test_app_1/data/mapper/day_mapper.dart';
import 'package:ak_test_app_1/data/service/surise_service.dart';
import 'package:ak_test_app_1/domain/model/day.dart';

class ApiUtil {
  final SunriseService _sunriseService;

  ApiUtil(this._sunriseService);

  Future<Day> getDay({
    required double latitude,
    required double longitude,
  }) async {
    final body = GetDayBody(latitude: latitude, longitude: longitude);
    final result = await _sunriseService.getDay(body);
    return DayMapper.fromApi(result);
  }
}
