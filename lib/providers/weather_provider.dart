import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app_2_0/models/weather_model.dart';

class WeatherProvider extends ChangeNotifier {
  WeatherModel? weatherModel;

  Future<void> getAPi() async {
    final response = await http.get(Uri.parse(
        'https://api.openweathermap.org/data/2.5/weather?q=kozhikode&units=metric&appid=6ebe78e800c45face45f961fca7030d3'));
    if (response.statusCode == 200) {
      weatherModel = WeatherModel.fromJson(jsonDecode(response.body));
      notifyListeners();
    }
  }
}
