import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];

  // reference the box
  final _myBox = Hive.box("mybox");

  // this method will run the first time ever opening the app
  void createInitialData() {
    todoList = [
      ["Finish a client Project", false],
      ["Work on side Project", false],
    ];
  }

  // load the data from the database
  void loadData() {
    todoList = _myBox.get("TODOLIST");
  }

  // update the database
  void updateDatabase() {
    _myBox.put('TODOLIST', todoList);
  }
}
