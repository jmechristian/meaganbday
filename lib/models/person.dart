class Person {
  String personName;
  String personPic;
  String personLocation;
  String personVideo;
  String personMessage;

  Person(
      {this.personName,
      this.personPic,
      this.personLocation,
      this.personVideo,
      this.personMessage});
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
      personLocation: 'Somewhere in TX',
      personName: 'Katie Conley',
      personPic: 'assets/katie.png',
      personVideo: 'assets/katie.mp4'),
  Person(
    personLocation: 'Burleson, TX',
    personName: 'Ella and Emery',
    personPic: 'assets/neices.png',
    personVideo: 'assets/neices.mp4',
  ),
  Person(
    personLocation: 'Tokyo, Japan',
    personName: 'Jess Malone',
    personPic: 'assets/jess.jpg',
    personVideo: 'assets/neices.mp4',
    personMessage:
        'Meagan, dagger-mermaid, keeper of cats, lover of bearded indie-men, librarian enchantress, 1st of her name. Your bravery and smarts are something truly rare and I hope to find in myself one day. I couldn’t ask for a better friend and I hope today treats you as well as you deserve. Which is a shit ton.',
  )
];
