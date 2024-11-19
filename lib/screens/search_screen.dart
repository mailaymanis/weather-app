import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/helper/routes.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Center(
          child: TextField(
            style: const TextStyle(color: Colors.white),
            onSubmitted: (value) async {
              var getWeatherCubit = BlocProvider.of<WeatherCubit>(context);
              getWeatherCubit.getWeather(cityName: value);
              Navigator.pushReplacementNamed(context, MyRoutes.weatherScreenRoute);
            },
            decoration: const InputDecoration(
              labelStyle: TextStyle(
                color: Colors.white,
              ),
              contentPadding: EdgeInsets.symmetric(
                vertical: 32,
                horizontal: 16,
              ),
              labelText: 'Search',
              suffixIcon: Icon(
                Icons.search,
                color: Colors.white,
              ),
              hintText: 'Enter City Name',
              hintStyle: TextStyle(color: Colors.white),
              border: OutlineInputBorder(
                  borderSide: BorderSide(color: Colors.green)),
            ),
          ),
        ),
      ),
    );
  }
}
