class weatherapp {
  String cityname;
  double temp;
  String lastupdate;
  double maxtemp;
  double mintemp;
  String weathercondition;
  String image;
  String region;
  String moonset;
  String moonrise;
  String sunset;
  String sunrise;
  /*String textmoon;
  String urlmoon;*/
  weatherapp(
      {required this.sunrise,
      required this.sunset,
      required this.moonrise,
      required this.moonset,
      required this.region,
      required this.cityname,
      required this.temp,
      required this.image,
      required this.lastupdate,
      required this.maxtemp,
      required this.mintemp,
      required this.weathercondition});
  factory weatherapp.fromjson(json) {
    return weatherapp(
        /* textmoon: json['forecast']['forecastday'][2]['hour']['condition']
            ['text'],
        urlmoon: json['forecast']['forecastday'][2]['hour']['condition']
            ['icon'],*/
        sunrise: json['forecast']['forecastday'][0]['astro']['sunrise'],
        sunset: json['forecast']['forecastday'][0]['astro']['sunset'],
        moonset: json['forecast']['forecastday'][0]['astro']['moonset'],
        moonrise: json['forecast']['forecastday'][0]['astro']['moonrise'],
        image: json['current']['condition']['icon'],
        cityname: json['location']['name'],
        region: json['location']['region'],
        lastupdate: json['current']['last_updated'],
        maxtemp: json['forecast']['forecastday'][0]['day']['maxtemp_c'],
        mintemp: json['forecast']['forecastday'][0]['day']['mintemp_c'],
        weathercondition: json['current']['condition']['text'],
        temp: json['forecast']['forecastday'][0]['day']['avgtemp_c']);
  }
}
