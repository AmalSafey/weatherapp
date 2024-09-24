import 'dart:convert';

import 'package:flutter_application_47weather/assets/model.dart';
import 'package:http/http.dart' as http;

class Apimanager {
  //https://api.weatherapi.com/v1/forecast.json?key=4d1cfc4af27c4d7790a90050243101&q=cairo
  static String baseurl = 'api.weatherapi.com';

  static Future<weatherapp> getsource(String city) async {
    var url = Uri.https(baseurl, '/v1/forecast.json',
        {'key': '4d1cfc4af27c4d7790a90050243101', 'q': city});

    var respons = await http.get(url);
    var bodystring = respons.body;
    var json = jsonDecode(bodystring);
    var response = weatherapp.fromjson(json);
    return response;
  }
}
