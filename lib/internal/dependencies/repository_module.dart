import 'package:ak_test_app_1/data/repository/day_data_repositiry.dart';
import 'package:ak_test_app_1/domain/repository/day_repository.dart';
import 'package:ak_test_app_1/internal/dependencies/api_module.dart';

class RepositoryMOdule {
  static DayRepository? _dayRepository;

  static DayRepository dayRepository() {
    return _dayRepository ??= DayDataRepository(ApiModule.apiUtil());
    // return _dayRepository!;
  }
}
// @RepositoryMOdule

