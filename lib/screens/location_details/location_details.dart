import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tourism/screens/location_details/text_section.dart';
import 'text_section.dart';
import 'image_banner.dart';

class LocationDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Tourism'),
      ),
      body: Column(
          mainAxisAlignment: MainAxisAlignment
              .start, // tells the where the widgets start from vertically
          crossAxisAlignment:
              CrossAxisAlignment.stretch, // this is horizontally
          children: [
            ImageBanner("assets/images/Ernest.JPG"),
            TextSection("Summary", "Something1"),
            TextSection("Summary", "Something2"),
            TextSection("Summary", "Something3"),
          ]),
    );
  }
}
