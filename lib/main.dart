import 'package:flutter/material.dart';
import 'package:doors_labyrinth_flutter/screens/doors_page.dart';

void main() => runApp(DoorsLabyrinth());

class DoorsLabyrinth extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Colors.blueAccent,
        scaffoldBackgroundColor: Colors.white,
        accentColor: Colors.deepPurpleAccent,
      ),
      home: DoorsPage(),
    );
  }
}
