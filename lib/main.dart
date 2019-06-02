import 'package:flutter/material.dart';
import 'package:doors_labyrinth_flutter/screens/doors_page.dart';
import 'labyrinth_map.dart';

void main() => runApp(DoorsLabyrinth());

class DoorsLabyrinth extends StatelessWidget {
  final LabyrinthMap labyrinthMap = LabyrinthMap();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.black54,
        accentColor: Colors.deepPurpleAccent,
      ),
      home: DoorsPage(
        labyrinthMap: labyrinthMap,
      ),
    );
  }
}
