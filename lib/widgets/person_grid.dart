import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../models/person.dart';
import '../screens/detail_screen.dart';

class PersonGrid extends StatelessWidget {
  final person = people;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.all(10),
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
                  color: Colors.red,
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
                style: GoogleFonts.tinos(fontSize: 24),
              ),
              Text(
                person[i].personLocation,
                style: GoogleFonts.sourceSansPro(
                  fontSize: 14,
                  color: Colors.black54,
                ),
              ),
            ],
          ),
        ),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 2 / 2.8,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
      ),
    );
  }
}
