import 'package:flutter/material.dart';
import 'package:doors_labyrinth_flutter/components/door_element.dart';
import 'package:doors_labyrinth_flutter/labyrinth_map.dart';
import 'package:doors_labyrinth_flutter/components/bottom_button.dart';
import 'package:doors_labyrinth_flutter/constants.dart';

class DoorsPage extends StatelessWidget {
  DoorsPage({
    @required this.labyrinthMap,
  });

  final LabyrinthMap labyrinthMap;

  String titleText() {
    String title = 'Labyrinth';
    if (!labyrinthMap.isAtTheBeginning()) {
      title += ' $labyrinthMap';
    }
    return title;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text(
          titleText(),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Visibility(
            visible: labyrinthMap.isStuckInLabyrinth(),
            child: Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Visibility(
                    visible: !labyrinthMap.isGoingToDeep(),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        DoorElement(
                          doorNumber: 1,
                          labyrinthMap: labyrinthMap,
                        ),
                        DoorElement(
                          doorNumber: 2,
                          labyrinthMap: labyrinthMap,
                        ),
                        DoorElement(
                          doorNumber: 3,
                          labyrinthMap: labyrinthMap,
                        ),
                      ],
                    ),
                  ),
                  Visibility(
                    visible: labyrinthMap.isGoingToDeep(),
                    child: Expanded(
                      child: Center(
                        child: Text(
                          'Nothing here.',
                          style: kLabelTextStyle,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Visibility(
            visible: labyrinthMap.findTheWayOut(),
            child: Expanded(
              child: Center(
                child: Text(
                  'Hurray! You found the way out!',
                  style: kResultTextStyle,
                ),
              ),
            ),
          ),
          Visibility(
            visible: labyrinthMap.isAtTheBeginning(),
            child: BottomButton(
              title: 'Choose one door above.',
              onTap: () {},
            ),
          ),
          Visibility(
            visible: !labyrinthMap.isAtTheBeginning(),
            child: BottomButton(
              title: 'Return',
              onTap: () {
                labyrinthMap.returnToPreviousDoor();
                Navigator.pop(context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
