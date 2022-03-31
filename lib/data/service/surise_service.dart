import 'package:ak_test_app_1/data/api/request/get_day_body.dart';
import 'package:dio/dio.dart';
import 'package:ak_test_app_1/data/api/model/api_day.dart';

class SunriseService {
  static const _BASRE_URI = 'https://api.sunrise-sunset.org';

  final Dio _dio = Dio(
    BaseOptions(baseUrl: _BASRE_URI),
  );

  Future<ApiDay> getDay(GetDayBody body
      //{
      // required double latitude,
      // required double longitudde,
      //}
      ) async {
    //final query = {'lat': latitude, 'lng': longitudde, 'formatted': 0};
    final response =
        await _dio.get('/json', queryParameters: body.toApi() //query,
            );
    return ApiDay.fromApi(response.data);
  }
}
