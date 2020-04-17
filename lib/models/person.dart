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
      personLocation: 'Burleson, TX',
      personName: 'Grandma!',
      personPic: 'assets/grandma.JPG',
      personVideo: 'assets/grandma.mp4'),
  Person(
      personLocation: 'Burleson, TX',
      personName: 'Mom',
      personPic: 'assets/mom.JPG',
      personVideo: 'assets/mom.mp4'),
  Person(
      personLocation: 'Lubbock, TX',
      personName: 'Katie Conley',
      personPic: 'assets/katie.png',
      personVideo: 'assets/katie.mp4'),
  Person(
      personLocation: 'Orlando, FL',
      personName: 'Ashley Maron',
      personPic: 'assets/ashley.JPG',
      personVideo: 'assets/ashley.mp4'),
  Person(
    personLocation: 'Burleson, TX',
    personName: 'Ella and Emery',
    personPic: 'assets/neices.png',
    personVideo: 'assets/neices.mp4',
  ),
  Person(
    personLocation: 'Tokyo, Japan',
    personName: 'Jess Malone',
    personPic: 'assets/jess.JPG',
    personVideo: 'assets/jess.mp4',
    personMessage:
        'Meagan, dagger-mermaid, keeper of cats, lover of bearded indie-men, librarian enchantress, 1st of her name. Your bravery and smarts are something truly rare and I hope to find in myself one day. I couldn’t ask for a better friend and I hope today treats you as well as you deserve. Which is a shit ton.',
  ),
  Person(
      personLocation: 'Austin, TX',
      personName: 'Cara & Angie',
      personPic: 'assets/cara.jpg',
      personVideo: 'assets/cara.mp4'),
  Person(
      personLocation: 'Wimberley, TX',
      personName: 'Shari & Buzz',
      personPic: 'assets/buzz.jpg',
      personVideo: 'assets/buzz.mp4'),
  Person(
      personLocation: 'New Braunfels, TX',
      personName: 'Nana & Pops',
      personPic: 'assets/nana.png',
      personVideo: 'assets/nana.mp4'),
  Person(
      personLocation: 'Tyson\'s Corners, VA',
      personName: 'Alex & Austin',
      personPic: 'assets/aa.jpg',
      personVideo: 'assets/aa.mp4'),
  Person(
      personLocation: 'Grapevine, TX',
      personName: 'Justin & Jeaneen',
      personPic: 'assets/jb.png',
      personVideo: 'assets/jb.mp4'),
  Person(
      personLocation: 'Where ever she wants to be',
      personName: 'Milo',
      personPic: 'assets/milo.jpeg',
      personVideo: 'assets/milo.mp4'),
];
