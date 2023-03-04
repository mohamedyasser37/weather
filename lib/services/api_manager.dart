import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:http/http.dart';
import 'package:weather_app/services/Weather_body.dart';
class ApiManager{

static Future<WeatherBody> getWeather({required String cityName})async {
  String baseUrl = 'http://api.weatherapi.com/v1';
  // var url = Uri.https(baseUrl, '/v2/top-headlines/sources', {
  //   'apiKey': ApiKey,
  //   'category':categoryID,
  // });
  // var response=await http.get(url);
  // return SourceResponse.fromJson(jsonDecode(response.body));
  // var url=Uri.https(baseUrl,'/current.json',{
  //   'apiKey': '949d7de293cc447caa4204557232802',
  //   'q':cityName
  var response = await http.get(
      Uri.parse('http://api.weatherapi.com/v1/current.json?key=949d7de293cc447caa4204557232802&q=$cityName'));
  return WeatherBody.fromJson(jsonDecode(response.body));



//   http.Response response= await http.get(url);
//   Map<String,dynamic>data=jsonDecode(response.body);
// print(data);
// return getWeather.fr
  }

}