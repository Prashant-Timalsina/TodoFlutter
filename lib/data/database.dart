import 'package:hive_flutter/hive_flutter.dart';

class TodoDatabase {
  List todoList = [];
  // Reference the box
  final _mybox = Hive.box('myBox');

  //For first time app oepned, then placeholder todos
  void createInitialData() {
    todoList = [
      ["Make bed", false],
      ["Eat rice", true],
    ];
  }

  // load the databse todolist
  void loadData() {
    todoList = _mybox.get("TODOLIST");
  }

  //update the database
  void updateDatabase() {
    _mybox.put("TODOLIST", todoList);
  }
}
