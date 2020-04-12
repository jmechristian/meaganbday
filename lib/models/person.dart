class Person {
  String personName;
  String personPic;
  String personLocation;
  String personVideo;

  Person(
      {this.personName, this.personPic, this.personLocation, this.personVideo});
}

var people = [
  Person(
      personLocation: 'Centreville, VA',
      personName: 'Milo',
      personPic: 'assets/milo.jpeg'),
  Person(
      personLocation: 'Dallas, TX',
      personName: 'Dixie',
      personPic: 'assets/dixie.jpg'),
  Person(
      personLocation: 'Alexandria, VA',
      personName: 'John Prine',
      personPic: 'assets/prine.JPG'),
  Person(
      personLocation: 'Nashville, TN',
      personName: 'Banzai',
      personPic: 'assets/banzai.jpeg'),
  Person(
    personLocation: 'Burleson, TX',
    personName: 'Ella and Emery',
    personPic: 'assets/neices.png',
    personVideo: 'assets/neices.mp4',
  ),
];
