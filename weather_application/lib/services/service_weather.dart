import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:weather_app/models/weather_model.dart';

class ServiceWeather {
  String urlBase = 'http://api.weatherapi.com/v1';
  String apiKey = '627cb998db3247f787a172329230102';

  Future<WeatherModel?> getWeather({required String cityName}) async {
    WeatherModel? model;
    try {
      Uri url =
          Uri.parse('$urlBase/forecast.json?key=$apiKey&q=$cityName&days=7');
      http.Response response = await http.get(url);
      Map<String, dynamic> data = jsonDecode(response.body);
      model = WeatherModel.fromJson(data);
    } catch (e) {
      print(e);
    }

    return model;
  }
}
