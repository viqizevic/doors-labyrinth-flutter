class LabyrinthMap {
  List<int> _path = [];

  String toString() {
    return _path.toString();
  }

  bool isAtTheBeginning() {
    return _path.isEmpty;
  }

  void moveOn(int doorNumber) {
    _path.add(doorNumber);
  }

  void returnToPreviousDoor() {
    _path.removeLast();
  }

  bool findTheWayOut() {
    return _path.toString() == '[3, 2, 1]';
  }

  bool isStuckInLabyrinth() {
    return !findTheWayOut();
  }

  bool isGoingToDeep() {
    return 4 <= _path.length;
  }
}
