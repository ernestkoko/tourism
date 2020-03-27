import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/location_details/location_details.dart';
import 'style.dart';

class App extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: LocationDetails(),
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          textTheme: TextTheme(title: AppBarTextStyle ),
        ),
            textTheme: TextTheme(
          title: TitleTextStyle,
          body1: Body1TextStyle,),),);
  }

}