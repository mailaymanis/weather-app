// ignore_for_file: avoid_print
import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:http/http.dart' as http;
import 'package:weather_app/model/current_weather_model.dart';

class WeatherService{
//instance from current weather model
CurrentWeatherModel? currentWeatherModel;
Future<CurrentWeatherModel> getWeatherData({required String cityName}) async{
  http.Response response = await http.get(
    Uri.parse("https://api.weatherapi.com/v1/forecast.json?key=795c651d49294bdd9a3162416241711&q=$cityName"),
  );
  try
  {
    if(response.statusCode == 200)
    {
      var jsonDecoded = jsonDecode(response.body);
      currentWeatherModel = CurrentWeatherModel.fromJson(data: jsonDecoded);
      debugPrint("weather data is : $jsonDecoded");
      return currentWeatherModel!;
    }
    else
    {
      throw Exception("an error occurred");
    }
  }
  catch(e)
  {
    throw Exception("an error occurred");
  }
}
}