import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/cubit/weather_states.dart';
import 'package:weather_app/screens/home_screen.dart';
import 'package:weather_app/screens/search_screen.dart';
import 'helper/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create:(context) => WeatherCubit(),
      child:Builder(
        builder:(context) => BlocBuilder<WeatherCubit,WeatherStates>(
          builder:(context , state){
            return  MaterialApp(
              theme: ThemeData(
                scaffoldBackgroundColor:const Color(0xff62638E),
                appBarTheme:const AppBarTheme(
                  color:Color(0xff62638E),
                  titleTextStyle: TextStyle(
                      color: Colors.white
                  ),
                  iconTheme: IconThemeData(
                      color: Colors.white
                  ),
                ),
                useMaterial3: true,
              ),
              debugShowCheckedModeBanner: false,
              home:const HomeScreen(),
              routes:{
                MyRoutes.weatherScreenRoute : (context) => const HomeScreen(),
                MyRoutes.searchScreenRoute : (context) => const SearchScreen(),
              },
            );
          },
        ),
      ),
    );
  }
}
