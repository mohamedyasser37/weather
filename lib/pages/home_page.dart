import 'package:flutter/material.dart';

import 'package:weather_app/services/Weather_body.dart';

import 'Search.dart';

class HomePage extends StatelessWidget {
  static const routeName="HomePage";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Weather App'),
        actions: [
          IconButton(onPressed: (){
            Navigator.pushNamed(context, Test.routeName);
          }, icon: Icon(Icons.search,size: 34,))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'there is no weather 😔 start',
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(
              height: 12,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'searching now ',
                  style: TextStyle(
                    fontSize: 30,
                  ),
                ),
                IconButton(onPressed: (){

                  Navigator.pushNamed(context, Test.routeName);
                }, icon: Icon(Icons.search,size: 42,color: Colors.blue,))
              ],
            ),

          ],
        ),
      ),
    );
  }
}
