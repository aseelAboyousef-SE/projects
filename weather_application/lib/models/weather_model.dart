import 'package:flutter/material.dart';

class WeatherModel {
  DateTime date;
  double temp;
  double maxTemp;
  double minTemp;
  String weatherState;
  String image;

  WeatherModel({
    required this.date,
    required this.temp,
    required this.maxTemp,
    required this.minTemp,
    required this.weatherState,
    required this.image,
  });

  factory WeatherModel.fromJson(dynamic data) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    return WeatherModel(
      date: DateTime.parse(data['location']['localtime']),
      temp: jsonData['avgtemp_c'],
      maxTemp: jsonData['maxtemp_c'],
      minTemp: jsonData['mintemp_c'],
      weatherState: jsonData['condition']['text'],
      image: jsonData['condition']['icon'],
    );
  }

  @override
  String toString() {
    return 'date = $date  temp = $temp  maxTemp = $maxTemp  minTemp = $minTemp  weatherState = $weatherState  image = $image';
  }

  MaterialColor getThemeColor() {
    if (weatherState == 'Sunny' ||
        weatherState == 'Clear' ||
        weatherState == 'partly cloudy') {
      return Colors.orange;
    } else if (weatherState == 'Blizzard' ||
        weatherState == 'Patchy snow possible' ||
        weatherState == 'Patchy sleet possible' ||
        weatherState == 'Patchy freezing drizzle possible' ||
        weatherState == 'Blowing snow') {
      return Colors.blue;
    } else if (weatherState == 'Freezing fog' ||
        weatherState == 'Fog' ||
        weatherState == 'Heavy Cloud' ||
        weatherState == 'Mist' ||
        weatherState == 'Fog') {
      return Colors.blueGrey;
    } else if (weatherState == 'Patchy rain possible' ||
        weatherState == 'Heavy Rain' ||
        weatherState == 'Showers	') {
      return Colors.blue;
    } else if (weatherState == 'Thundery outbreaks possible' ||
        weatherState == 'Moderate or heavy snow with thunder' ||
        weatherState == 'Patchy light snow with thunder' ||
        weatherState == 'Moderate or heavy rain with thunder' ||
        weatherState == 'Patchy light rain with thunder') {
      return Colors.deepPurple;
    } else {
      return Colors.orange;
    }
  }
}
