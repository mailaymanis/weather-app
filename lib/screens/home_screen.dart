import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/cubit/weather_states.dart';
import 'package:weather_app/widgets/no_weather_data.dart';
import 'package:weather_app/widgets/weather_data.dart';

import '../helper/routes.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text(' Weather app'),
        actions: [
          IconButton(
            icon:const Icon(Icons.search ),
            onPressed: (){
              Navigator.pushReplacementNamed(context, MyRoutes.searchScreenRoute);
            },
          ),
        ],
      ),
      body: BlocBuilder<WeatherCubit,WeatherStates>(
        builder:(context , state){
          if(state is WeatherInitializationState)
          {
            return const NoWeatherData();
          }
          else if(state is WeatherSuccessState)
          {
            return const WeatherData();
          }
          else
          {
            return const Center(
              child: Text('opps there was an error',
                style: TextStyle(
                    fontSize: 28
                ),
              ),
            );
          }
        },
      ),
    );
  }
}
