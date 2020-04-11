import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/person.dart';

class PersonDetail extends StatelessWidget {
  final Person selectedPerson;

  PersonDetail({this.selectedPerson});

  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: screenHeight,
            width: screenWidth,
            color: Colors.red,
          ),
          Container(
            height: screenHeight - screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(selectedPerson.personPic),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: screenHeight - screenHeight / 3 - 25,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 35, vertical: 30),
              height: screenHeight / 3 + 25,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    selectedPerson.personName,
                    style: GoogleFonts.tinos(fontSize: 36),
                  ),
                  Text(
                    selectedPerson.personLocation,
                    style: GoogleFonts.sourceSansPro(fontSize: 18),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla malesuada nec massa sit amet facilisis. Vestibulum non consequat est.',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 20, color: Colors.black54),
                  ),
                ],
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(25),
                  topRight: Radius.circular(25),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
