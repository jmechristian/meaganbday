import 'package:flutter/material.dart';

import '../models/person.dart';
import '../screens/detail_screen.dart';

class PeopleRow extends StatelessWidget {
  final person = people;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(
        top: 10,
        right: 20,
      ),
      height: 120,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, i) {
          return GestureDetector(
            onTap: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                builder: (context) => PersonDetail(
                  selectedPerson: person[i],
                ),
              ));
            },
            child: Padding(
              padding: const EdgeInsets.only(top: 5, right: 20),
              child: Column(
                children: <Widget>[
                  CircleAvatar(
                    radius: 35,
                    backgroundImage: AssetImage(
                      people[i].personPic,
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    person[i].personName,
                    softWrap: true,
                  ),
                ],
              ),
            ),
          );
        },
        itemCount: people.length,
      ),
    );
  }
}
