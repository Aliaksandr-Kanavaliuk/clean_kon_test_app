import 'package:ak_test_app_1/domain/model/day.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _latitudeController = TextEditingController();
  final _longtitudeController = TextEditingController();

  Day? _day;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: FocusScope.of(context).unfocus,
      child: Scaffold(
        body: _getBody(),
      ),
    );
    //return Scaffold();
  }

  Widget _getBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            _getRowInput(),
            SizedBox(height: 20),
            FloatingActionButton(
              onPressed: _getDay,
              tooltip: 'GET DAY',

              heroTag: Text('Act'), // 'fjldsajfl',
              //label: Text('Action'),
            ),
            SizedBox(height: 20),
            if (_day != null) _getDayInfo(_day!),
          ],
        ),
      ),
    );
  }

  Widget _getRowInput() {
    return Row(
      children: [
        Expanded(
          child: TextField(
            controller: _latitudeController,
            keyboardType:
                TextInputType.numberWithOptions(decimal: true, signed: true),
            decoration: InputDecoration(hintText: 'Latitude'),
          ),
        ),
      ],
    );
  }

  Widget _getDayInfo(Day day) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Text('Rise: ${day.sunrise.toLocal()}'),
        Text('down: ${day.sunset.toLocal()}'),
        Text('noon: ${day.solarNoon.toLocal()}'),
        Text('length: ${Duration(seconds: day.dayLength)}'),
      ],
    );
  }

  void _getDay() {}
}
