import 'package:flutter/material.dart';
import 'package:doors_labyrinth_flutter/components/door_element.dart';

class DoorsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Labyrinth'),
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          DoorElement(),
          DoorElement(),
          DoorElement(),
        ],
      ),
    );
  }
}
