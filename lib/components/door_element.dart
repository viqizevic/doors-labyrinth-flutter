import 'package:flutter/material.dart';
import 'package:doors_labyrinth_flutter/constants.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:doors_labyrinth_flutter/screens/doors_page.dart';

class DoorElement extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        GestureDetector(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return DoorsPage();
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
              color: Colors.red,
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
      ],
    );
  }
}
