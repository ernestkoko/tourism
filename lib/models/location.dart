import 'location_fact.dart';
class Location {
  String name;
  String imagePath;
  final List<LocationFact> facts;
  //constructor
Location(this.name, this.imagePath, this.facts);

  static List<Location> fetchAll(){
    return [
      Location('Arashiyma Bamboo groove',
          'assets/images/Ernest.JPG',[
            LocationFact('Summary', 'Why we could go on about the ethereal glow '
                'and seemingly endless nights of this bamboo grove on the outside'),
            LocationFact('How to get there',
                'Kyoto airport, with several terminals, is located 16km south of '
                    'the city and it is also knwon to kyoto')
          ])
    ];
  }
}