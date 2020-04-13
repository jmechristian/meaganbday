import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meagan_bday/widgets/person_grid.dart';

import '../models/person.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final allPeople = people;
  @override
  Scaffold build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              const Color.fromRGBO(69, 74, 96, 1),
              const Color.fromRGBO(52, 55, 75, 1)
            ],
          ),
        ),
        child: ListView(
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.arrow_back,
                    color: const Color.fromRGBO(140, 140, 154, 1),
                  ),
                  onPressed: null,
                ),
                IconButton(
                  icon: Icon(
                    Icons.menu,
                    color: const Color.fromRGBO(140, 140, 154, 1),
                  ),
                  onPressed: null,
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 10, left: 15, right: 15),
              child: Container(
                child: Text(
                  'Happy Birthday Meagan!',
                  style: GoogleFonts.tinos(
                      fontSize: 54.0,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                  softWrap: true,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                'This will be my message to the person this is for. I am not sure how many lines this goes to and this is just a test.',
                style: GoogleFonts.sourceSansPro(
                  fontSize: 15,
                  fontWeight: FontWeight.w400,
                  color: const Color.fromRGBO(140, 140, 154, 1),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(
              height: 50,
            ),
            Container(
              padding: EdgeInsets.only(
                bottom: 40,
              ),
              height: MediaQuery.of(context).size.height - 200,
              child: PersonGrid(),
            ),
          ],
        ),
      ),
    );
  }
}
