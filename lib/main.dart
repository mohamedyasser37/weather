import 'package:flutter/material.dart';
import 'package:weather_app/pages/Search.dart';
import 'package:weather_app/pages/home_page.dart';

import 'package:weather_app/pages/ui.dart';

void main() {
  runApp(WeatherApp());
}
class WeatherApp extends StatelessWidget {
  const WeatherApp({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute:HomePage.routeName ,
     routes: {
       //UiScreen.routeName:(context) => UiScreen(),
       HomePage.routeName:(context) => HomePage(),
       Test.routeName:(context) => Test(),
     },
    );
  }
}