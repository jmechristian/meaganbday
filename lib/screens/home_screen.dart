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
      backgroundColor: Color(0xFFFAF6ED),
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: null,
              ),
              IconButton(
                icon: Icon(Icons.menu),
                onPressed: null,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsets.only(top: 25, left: 15, right: 15),
            child: Row(
              children: <Widget>[
                Text(
                  'Hello World',
                  style: GoogleFonts.tinos(
                    fontSize: 36.0,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.keyboard_arrow_down),
                  onPressed: null,
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              'This will be my message to the person this is for.',
              style: GoogleFonts.sourceSansPro(
                fontSize: 15,
                fontWeight: FontWeight.w400,
                color: Colors.black54,
              ),
            ),
          ),
          SizedBox(
            height: 100,
          ),
          Container(
              height: MediaQuery.of(context).size.height - 200,
              child: PersonGrid()),
        ],
      ),
    );
  }
}
