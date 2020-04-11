class Person {
  String personName;
  String personPic;
  String personLocation;

  Person({this.personName, this.personPic, this.personLocation});
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
];
