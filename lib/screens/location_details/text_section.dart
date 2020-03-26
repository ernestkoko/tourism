import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextSection extends StatelessWidget{
  final Color _color;

  // constructor
  TextSection(this._color);

  @override
  Widget build(BuildContext context) {


    return Container(
      decoration: BoxDecoration(
        color: _color ,
      ),
      child: Text('hi'),
    );
  }


}