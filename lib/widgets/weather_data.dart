import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubit/weather_cubit.dart';
import 'package:weather_app/model/current_weather_model.dart';

class WeatherData extends StatelessWidget {
  const WeatherData({super.key});

  @override
  Widget build(BuildContext context) {
    //use this to find data
    CurrentWeatherModel currentWeatherModel = BlocProvider.of<WeatherCubit>(context).weatherModel!;
    //or user this to find data
    // final cubit = BlocProvider.of<WeatherCubit>(context).weatherModel;
    return SingleChildScrollView(
      physics:const BouncingScrollPhysics(),
      child: Padding(
        padding:const EdgeInsets.symmetric(vertical: 50 , horizontal: 20),
        child:Container(
          padding: const EdgeInsets.only(top: 40),
          width:MediaQuery.sizeOf(context).width,
          height: MediaQuery.sizeOf(context).height,
          decoration: BoxDecoration(
            color:const Color(0xff0A0728),
            borderRadius: BorderRadius.circular(20),
          ),
          child:SingleChildScrollView(
            child: Column(
              children: [
                Text(currentWeatherModel.name! , style:const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                ),),
                const SizedBox(height: 15,),
                CircleAvatar(
                  backgroundImage: AssetImage(currentWeatherModel.getImage()),
                  radius: 70,
                ),
                const SizedBox(height: 15,),
                Text(currentWeatherModel.status! , style: const TextStyle(
                  color: Colors.white,
                  fontSize: 25,
                ),),
                const SizedBox(height: 8,),
                Text(currentWeatherModel.date! , style: const TextStyle(
                    color: Colors.white54,
                    fontSize: 20
                ),),
                const SizedBox(height: 15,),
                Text("${currentWeatherModel.avgTemp!.toString()}c" , style: const TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontWeight: FontWeight.w700,
                ),),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 100,
                      height: 120,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:const Color(0xff4D4B68),
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CircleAvatar(
                            backgroundImage:AssetImage("assets/images/sunrise.jpg"),
                            radius: 20,
                          ),
                          Text(currentWeatherModel.sunrise! , style: const TextStyle(
                            color: Colors.white,
                          ),),
                          const Text("Sunrise" , style:  TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 100,
                      height: 120,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:const Color(0xff4D4B68),
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CircleAvatar(
                            backgroundImage:AssetImage("assets/images/sunset.jpg"),
                            radius: 20,
                          ),
                          Text(currentWeatherModel.sunset! , style: const TextStyle(
                            color: Colors.white,
                          ),),
                          const Text("Sunset" , style:  TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 100,
                      height: 120,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:const Color(0xff4D4B68),
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CircleAvatar(
                            backgroundImage:AssetImage("assets/images/moonrise.jpg"),
                            radius: 20,
                          ),
                          Text(currentWeatherModel.moonrise! , style: const TextStyle(
                            color: Colors.white,
                          ),),
                          const Text("Moonrise" , style:  TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.only(left: 10),
                      width: 100,
                      height: 120,
                      decoration:BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        color:const Color(0xff4D4B68),
                      ),
                      child:Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          const CircleAvatar(
                            backgroundImage:AssetImage("assets/images/moonset.jpg"),
                            radius: 20,
                          ),
                          Text(currentWeatherModel.sunrise! , style: const TextStyle(
                            color: Colors.white,
                          ),),
                          const Text("Moonset" , style:  TextStyle(
                              color: Colors.white
                          ),)
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 15,),
                Text("MaxTemp : ${currentWeatherModel.maxTemp!}c" , style: const TextStyle(
                    color: Colors.white
                ),),
                const SizedBox(height: 8,),
                Text("MinTemp : ${currentWeatherModel.minTemp!}c" , style: const TextStyle(
                    color: Colors.white
                ),),
                const SizedBox(height: 8,),
                Text("Maxwind : ${currentWeatherModel.maxWind!}km/h" , style: const TextStyle(
                    color: Colors.white
                ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
