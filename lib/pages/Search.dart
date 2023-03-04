import 'package:flutter/material.dart';
import 'package:weather_app/pages/ui.dart';
import 'package:weather_app/services/api_manager.dart';

import '../services/Weather_body.dart';

class Test extends StatefulWidget {
  static const routeName = "Test";

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  String? cityName;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Search a City"),
        ),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.center,

          children: [
            SizedBox(
              height: 100,
            ),
            cityName == null
                ? Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12),
                    child: TextField(
                      onSubmitted: (data) {
                        cityName = data;
                        setState(() {});
                      },
                      decoration: InputDecoration(
                          suffixIcon: Icon(Icons.search),
                          hintText: 'Enter a City',
                          label: Text('Search'),
                          border: OutlineInputBorder(),
                          contentPadding: EdgeInsets.symmetric(
                              horizontal: 16, vertical: 24)),
                    ),
                  )
                : FutureBuilder<WeatherBody>(
                    future: ApiManager.getWeather(cityName: cityName ?? ''),
                    builder: (buildContext, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Center(child: CircularProgressIndicator());
                      }
                      if (snapshot.hasError) {
                        return Center(
                            child:
                                Text('Erorrrrr${snapshot.error.toString()}'));
                      }
                      if (cityName == null) {
                        return Text('');
                      } else {
                        return Expanded(
                          child: ListView.builder(
                            itemBuilder: (_, index) {
                              return UiScreen(snapshot.data!);

                            },
                            itemCount: 1,
                          ),
                        );
                      }
                    },
                  ),
          ],
        )
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
    }else if (difference < 1440) {
      var difference = dataTimeNow
          .difference(DateTime.parse(data.current?.lastUpdated ?? ''))
          .inMinutes;
      return '$difference hours Ago';
    }else if (difference < 44640) {
      var difference = dataTimeNow
          .difference(DateTime.parse(data.current?.lastUpdated ?? ''))
          .inMinutes;
      return '$difference days Ago';
    }
  }
}
