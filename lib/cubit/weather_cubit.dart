import 'package:bloc/bloc.dart';
import 'package:weather_app/cubit/weather_states.dart';
import 'package:weather_app/model/current_weather_model.dart';
import 'package:weather_app/services/weather_services.dart';

class WeatherCubit extends Cubit<WeatherStates>{
  WeatherCubit() : super(WeatherInitializationState());

//create instance from current weather model
CurrentWeatherModel? weatherModel;
getWeather({required String cityName}) async{
  emit(WeatherLoadingState());
  try
  {
    weatherModel = await WeatherService().getWeatherData(cityName: cityName);
    emit(WeatherSuccessState(currentWeatherModel: weatherModel!),);
  }
  catch(e)
  {
    emit(WeatherFailedState());
  }
}
}