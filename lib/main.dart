import 'package:flutter/material.dart';
import 'package:tourism/app.dart';
import 'package:tourism/screens/location_details/location_details.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: App(),
    );
  }
}

