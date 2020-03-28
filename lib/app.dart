import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/location_details/location_details.dart';
import 'package:tourism/screens/locations/locations.dart';
import 'screens/location_details/location_details.dart';
//import 'screens/locations/locations.dart';
import 'style.dart';

const LocationRoute = '/';
const LocationDetailRoute = '/location_details';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Locations(),
      onGenerateRoute: _routes(),
      theme: _theme(),
    );
  }
// stating the routes for click events
  RouteFactory _routes() {
    return (settings) {
      final Map<String, dynamic> arguments = settings.arguments;
      Widget screen; // the screen to be returned
      switch (settings.name) {
        case LocationRoute:
          screen = Locations();
          break;
        case LocationDetailRoute:
         screen = LocationDetails(arguments['id']);
        //screen = Locations();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(builder: (BuildContext context) => screen);
    };
  }


  //stating the different themes
  ThemeData _theme() {
    return ThemeData(
      appBarTheme: AppBarTheme(
        textTheme: TextTheme(title: AppBarTextStyle),
      ),
      textTheme: TextTheme(
        title: TitleTextStyle,
        body1: Body1TextStyle,
      ),
    );
  }
}
