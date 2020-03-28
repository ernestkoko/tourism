import 'location_fact.dart';
class Location {
  final int id;
  String name;
  String imagePath;
  final List<LocationFact> facts;

  //constructor
Location(this.id, this.name, this.imagePath, this.facts);

  static Location fetchByID(int locationID){
    //fetch all locations, iterate through them, when we get the location with
    // the ID we want
    // return it
    List<Location> locations = Location.fetchAll();

    for(int i = 0; i < locations.length; i++){
      if(locations[i].id == locationID){
        return locations[i];
      }
    }
    return null;

  }

  static List<Location> fetchAll(){
    return [
      Location(1, 'Arashiyma Bamboo groove',
          'assets/images/Ernest.JPG',[
            LocationFact('Summary', 'Why we could go on about the ethereal glow '
                'and seemingly endless nights of this bamboo grove on the outside'),
            LocationFact('How to get there',
                'Kyoto airport, with several terminals, is located 16km south of '
                    'the city and it is also knwon to kyoto')
          ]),
      Location(2, 'Mount Fuji',
          'assets/images/Ernest.JPG',[
            LocationFact('Summary', 'Why we could go on about the ethereal glow '
                'and seemingly endless nights of this bamboo grove on the outside'),
            LocationFact('How to get there',
                'Kyoto airport, with several terminals, is located 16km south of '
                    'the city and it is also knwon to kyoto')
          ]),
      Location(3, 'Bamboo man',
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