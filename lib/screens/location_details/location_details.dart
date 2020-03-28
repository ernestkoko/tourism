import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/location_details/text_section.dart';
import 'text_section.dart';
import 'image_banner.dart';
import '../../models/location.dart';

class LocationDetails extends StatelessWidget {
  final int _locationID;
  LocationDetails(this._locationID);
  @override
  Widget build(BuildContext context) {
    final location  = Location.fetchByID(_locationID);  // calling fetchall
    //final location = locations.first;  //assigns given location
    return Scaffold(
      appBar: AppBar(
        title: Text(location.name), // takes the name of the location
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment
              .start, // tells the where the widgets start from vertically
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // this is horizontally
          children: [
            ImageBanner(location.imagePath),//takes the image from location

          ]..addAll(textSection(location))), //cascaded
    );
  }
  List<Widget> textSection(Location location){
    return location.facts.map((fact) => TextSection(fact.title, fact.text)).toList();
    //changes list of locatiofacts to map
  }
}
