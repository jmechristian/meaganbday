import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/person.dart';
import '../screens/detail_screen.dart';

class PersonGrid extends StatelessWidget {
  final person = people;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.only(left: 10, right: 10, bottom: 75),
      itemCount: people.length,
      itemBuilder: (context, i) => GestureDetector(
        onTap: () {
          Navigator.of(context).push(MaterialPageRoute(
            builder: (context) => PersonDetail(
              selectedPerson: person[i],
            ),
          ));
        },
        child: Padding(
          padding: EdgeInsets.all(5),
          child: Column(
            children: <Widget>[
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(7),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black38,
                      blurRadius: 10,
                      offset: Offset(0, 5),
                      spreadRadius: 2,
                    ),
                  ],
                  color: Colors.black38,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(
                      person[i].personPic,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                person[i].personName,
                style: GoogleFonts.tinos(
                  fontSize: 24,
                  color: Colors.white,
                ),
              ),
              Text(
                person[i].personLocation,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 14,
                  color: const Color.fromRGBO(204, 173, 125, 1),
                ),
              ),
            ],
          ),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 3,
        crossAxisSpacing: 15,
        mainAxisSpacing: 10,
      ),
    );
  }
}
