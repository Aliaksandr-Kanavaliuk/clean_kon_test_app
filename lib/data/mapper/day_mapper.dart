import 'package:ak_test_app_1/data/api/model/api_day.dart';
import 'package:ak_test_app_1/domain/model/day.dart';

class DayMapper {
  static Day fromApi(ApiDay day) {
    return Day(
      // sunrise: (day!=null && day.sunrise!=null)  ? DateTime.parse(day.sunrise):DateTime.now() ,
      sunrise: DateTime.tryParse(day.sunrise) ??
          DateTime.fromMillisecondsSinceEpoch(0),
      sunset: DateTime.tryParse(day.sunset) ??
          DateTime.fromMillisecondsSinceEpoch(0),
      solarNoon: DateTime.tryParse(day.solarNoon) ??
          DateTime.fromMillisecondsSinceEpoch(0), // .now(),
      dayLength: day.dayLength.toInt(),
    );
  }
}
