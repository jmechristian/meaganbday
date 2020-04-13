import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/people_row.dart';
import '../widgets/video_player.dart';
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
            color: Colors.transparent,
          ),
          Container(
            height: screenHeight - screenHeight / 3,
            width: screenWidth,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.purple, Colors.blue]),
            ),
            child: VideoPlayerApp(
              person: selectedPerson,
            ),
          ),
          Positioned(
            top: screenHeight - screenHeight / 3 - 75,
            child: Container(
              padding: EdgeInsets.all(25),
              height: screenHeight / 3 + 75,
              width: screenWidth,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            selectedPerson.personName,
                            style: GoogleFonts.tinos(
                              fontSize: 36,
                              color: const Color.fromRGBO(69, 74, 96, 1),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        selectedPerson.personLocation,
                        style: GoogleFonts.sourceSansPro(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                          color: const Color.fromRGBO(140, 140, 154, 1),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Text(
                        selectedPerson.personMessage != null
                            ? selectedPerson.personMessage
                            : 'Text will go here',
                        style: GoogleFonts.sourceSansPro(
                            fontSize: 16, color: Colors.black54),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Divider(
                    color: Colors.black87,
                  ),
                  PeopleRow(),
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
