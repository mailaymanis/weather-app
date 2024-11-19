import 'package:weather_app/model/current_weather_model.dart';

abstract class WeatherStates{}

//weather initial state
class WeatherInitializationState extends WeatherStates{}

//create weather states
class WeatherLoadingState extends WeatherStates{}
class WeatherSuccessState extends WeatherStates{
  final CurrentWeatherModel currentWeatherModel;
  WeatherSuccessState({required this.currentWeatherModel});
}
class WeatherFailedState extends WeatherStates{}