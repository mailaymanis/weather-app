class CurrentWeatherModel {
  String? name;
  String? date;
  double? maxTemp;
  double? minTemp;
  double? avgTemp;
  double? maxWind;
  String? status;
  String? icon;
  String? sunrise;
  String? sunset;
  String? moonrise;
  String? moonset;

  CurrentWeatherModel(
      this.name,
      this.date,
      this.maxTemp,
      this.minTemp,
      this.avgTemp,
      this.maxWind,
      this.status,
      this.icon,
      this.sunrise,
      this.sunset,
      this.moonrise,
      this.moonset); //create constructor

//Refactoring
  CurrentWeatherModel.fromJson({required Map<String, dynamic> data}) {
    var jsonData = data['forecast']['forecastday'][0]['day'];
    var json = data['forecast']['forecastday'][0]['astro'];
    name = data['location']['name'].toString();
    date = data['location']['localtime'].toString();
    maxTemp = jsonData['maxtemp_c'].toDouble();
    minTemp = jsonData['mintemp_c'].toDouble();
    avgTemp = jsonData['avgtemp_c'].toDouble();
    maxWind = jsonData['maxwind_mph'].toDouble();
    status = jsonData['condition']['text'].toString();
    icon = jsonData['condition']['icon'].toString();
    sunset = json['sunset'].toString();
    sunrise = json['sunrise'].toString();
    moonrise = json['moonrise'].toString();
    moonset = json['moonset'].toString();
  }

//create map
  Map<String, dynamic> toJson() {
    return {
      "name": name,
      "date": date,
      "maxTemp": maxTemp,
      "minTemp": minTemp,
      "avgTemp": avgTemp,
      "maxWind": maxWind,
      "status": status,
      "icon": icon,
      "sunrise": sunrise,
      "sunset": sunset,
      "moonrise": moonrise,
      "moonset": moonset,
    };
  }

  String getImage() {
    if (status == "Rain" || status == "Moderate rain") {
      return "assets/images/rain.jpg";
    } else if (status == "Heat") {
      return "assets/images/heat.jpg";
    } else if (status == "Heavy Clouds" || status == "Mist") {
      return "assets/images/heavy cloud.jpg";
    } else if (status == "Heavy Rain") {
      return "assets/images/heavy rain.jpg";
    } else if (status == "Light Clouds") {
      return "assets/images/light cloud.jpg";
    } else if (status == "Light Rain") {
      return "assets/images/light rain.jpg";
    } else if (status == "Night Clear") {
      return "assets/images/night clear.jpg";
    } else if (status == "Snow") {
      return "assets/images/snow.jpg";
    } else if (status == "Sun") {
      return "assets/images/sun.jpg";
    } else if (status == "Thunder" || status == "Thunderstorm") {
      return "assets/images/thunder.jpg";
    } else if (status == "Wind" || status == "Patchy rain nearby") {
      return "assets/images/wind.jpg";
    } else if (status == "Sunrise") {
      return "assets/images/sunrise.jpg";
    } else if (status == "Sunset") {
      return "assets/images/sunset.jpg";
    } else if (status == "Moonrise") {
      return "assets/images/moonrise.jpg";
    } else if (status == "Moonset") {
      return "assets/images/moonset.jpg";
    } else {
      return "assets/images/clear.jpg";
    }
  }
}
