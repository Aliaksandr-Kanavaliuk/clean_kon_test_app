import 'package:ak_test_app_1/data/api/api_util.dart';
import 'package:ak_test_app_1/data/service/surise_service.dart';

class ApiModule {
  static ApiUtil? _apiUtil;

  static ApiUtil apiUtil() {
    return _apiUtil ??= ApiUtil(SunriseService());

    // return _apiUtil;
  }
}
