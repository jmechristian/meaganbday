import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/people_row.dart';
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
            top: screenHeight - screenHeight / 3 - 100,
            child: Container(
              padding: EdgeInsets.all(25),
              height: screenHeight / 3 + 100,
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
                              color: Colors.purple,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            selectedPerson.personLocation,
                            style: GoogleFonts.sourceSansPro(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.play_circle_filled,
                        ),
                        onPressed: () {},
                        iconSize: 46,
                        color: Colors.red,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla malesuada nec massa sit amet facilisis. Vestibulum non consequat est.',
                    style: GoogleFonts.sourceSansPro(
                        fontSize: 18, color: Colors.black54),
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
