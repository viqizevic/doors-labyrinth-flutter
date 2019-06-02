import 'package:flutter/material.dart';
import 'package:doors_labyrinth_flutter/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doors_labyrinth_flutter/screens/doors_page.dart';
import 'package:doors_labyrinth_flutter/labyrinth_map.dart';

class DoorElement extends StatelessWidget {
  DoorElement({
    @required this.doorNumber,
    @required this.labyrinthMap,
  });

  final int doorNumber;
  final LabyrinthMap labyrinthMap;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            labyrinthMap.moveOn(doorNumber);
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DoorsPage(
                  labyrinthMap: labyrinthMap,
                );
              }),
            );
          },
          child: Container(
            child: Icon(
              FontAwesomeIcons.doorClosed,
              size: 70.0,
              color: kDoorColor,
            ),
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              color: Colors.white70,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
