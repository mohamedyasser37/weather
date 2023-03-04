import 'package:flutter/material.dart';
import 'package:weather_app/services/Weather_body.dart';

class UiScreen extends StatelessWidget {
  static const routeName = "ui";
  WeatherBody weatherBody;

  UiScreen(this.weatherBody);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 100,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weatherBody.location!.name ?? '',style: TextStyle(
            fontSize: 38,
            fontWeight: FontWeight.bold
          ),),
          SizedBox(
            height: 12,
          ),

          Text('Updated: ${showPublishedAT(weatherBody)}',style: TextStyle(
              fontSize: 22,
              //fontWeight: FontWeight.bold
          ),),
          Spacer(
            flex: 1,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Image.asset('assets/images/clear.png'),
              Text(' ${weatherBody.current?.tempC?.toInt()}  ',style: TextStyle(
                  fontSize: 38,
                  fontWeight: FontWeight.bold
              ),),
              Column(
                children: [
                  Text('  max: ${weatherBody.current?.tempF?.toInt()} ',style: TextStyle(
                      fontSize: 16,
                      //fontWeight: FontWeight.bold
                  ),),
                  Text('  min: ${weatherBody.current?.tempF?.toInt()} ',style: TextStyle(
                      fontSize: 16,
                     // fontWeight: FontWeight.bold
                  ),),
                ],
              )
            ],
          ),
          Spacer(
            flex: 1,
          ),
          Text(' ${weatherBody.current?.condition?.text}',style: TextStyle(
              fontSize: 32,
              fontWeight: FontWeight.bold
          ),),
          Spacer(
            flex: 2,
          ),
        ],
      ),
    );
  }

  showPublishedAT(WeatherBody data) {
    var dataTimeNow = DateTime.now();
    var difference = dataTimeNow
        .difference(DateTime.parse(data.current?.lastUpdated ?? ''))
        .inMinutes;

    if (difference < 0) {
      difference = dataTimeNow
          .difference(DateTime.parse(data.current?.lastUpdated ?? ''))
          .inSeconds;
      return '$difference second Ago';
    } else if (difference < 60) {
      var difference = dataTimeNow
          .difference(DateTime.parse(data.current?.lastUpdated ?? ''))
          .inMinutes;
      return '$difference minutes Ago';
    } else if (difference < 1440) {
      var difference = dataTimeNow
          .difference(DateTime.parse(data.current?.lastUpdated ?? ''))
          .inMinutes;
      return '$difference hours Ago';
    } else if (difference < 44640) {
      var difference = dataTimeNow
          .difference(DateTime.parse(data.current?.lastUpdated ?? ''))
          .inMinutes;
      return '$difference days Ago';
    }
  }
}
