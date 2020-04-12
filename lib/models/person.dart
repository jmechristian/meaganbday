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
      personPic: 'assets/milo.jpeg',
      personVideo: 'assets/neices.mp4'),
  Person(
      personLocation: 'Dallas, TX',
      personName: 'Dixie',
      personPic: 'assets/dixie.jpg',
      personVideo: 'assets/neices.mp4'),
  Person(
      personLocation: 'Alexandria, VA',
      personName: 'John Prine',
      personPic: 'assets/prine.JPG',
      personVideo: 'assets/neices.mp4'),
  Person(
      personLocation: 'Nashville, TN',
      personName: 'Banzai',
      personPic: 'assets/banzai.jpeg',
      personVideo: 'assets/neices.mp4'),
  Person(
    personLocation: 'Burleson, TX',
    personName: 'Ella and Emery',
    personPic: 'assets/neices.png',
    personVideo: 'assets/neices.mp4',
  ),
];
