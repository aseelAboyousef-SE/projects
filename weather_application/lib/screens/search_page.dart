import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:weather_app/models/weather_model.dart';
import 'package:weather_app/provider/weather_provider.dart';
import 'package:weather_app/services/service_weather.dart';

class SearchPage extends StatelessWidget {
  String? nameCity;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Search a City'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: TextField(
            onChanged: (value) {
              nameCity = value;
            },
            onSubmitted: (value) async {
              nameCity = value;
              ServiceWeather service = ServiceWeather();
              WeatherModel? weather =
                  await service.getWeather(cityName: nameCity!);
              Provider.of<WeatherProvider>(context, listen: false).weatherData =
                  weather;
              Provider.of<WeatherProvider>(context, listen: false).cityName =
                  nameCity;
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsets.symmetric(
                vertical: 25,
                horizontal: 20,
              ),
              border: OutlineInputBorder(),
              label: Text('search'),
              hintText: 'Enter A City',
              suffix: GestureDetector(
                onTap: () async {
                  ServiceWeather service = ServiceWeather();
                  WeatherModel? weather =
                      await service.getWeather(cityName: nameCity!);
                  Provider.of<WeatherProvider>(context, listen: false)
                      .weatherData = weather;
                  Provider.of<WeatherProvider>(context, listen: false)
                      .cityName = nameCity;
                  Navigator.pop(context);
                },
                child: Icon(Icons.search),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
