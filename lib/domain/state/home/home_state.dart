import 'package:ak_test_app_1/domain/model/day.dart';
import 'package:ak_test_app_1/domain/repository/day_repository.dart';
import 'package:mobx/mobx.dart';
import 'package:meta/meta.dart';

part 'home_state.g.dart';

class HomeState = HomeStateBase with _$HomeState;

abstract class HomeStateBase with Store {
  final DayRepository _dayRepository;

  HomeStateBase(this._dayRepository, this._day);

  @observable
  Day _day;

  @observable
  bool isLoading = false;

  @action
  Future<void> getDay({
    required double latitude,
    required double longtitude,
  }) async {
    isLoading = true;
    final data =
        await _dayRepository.getDay(latitude: latitude, longtitude: longtitude);
    _day = data;
    isLoading = false;
  }
}
