import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {

  List toDoList = [ ["first task",false],
      ["second task",false]];

  final  _myBox = Hive.box('mybox');

  void createInitialData(){
    toDoList = [
      ["first task",false],
      ["second task",false]
    ];
  }

  void loadData(){
      toDoList = _myBox.get("TODOLIST");
  }

  void updateData(){
      _myBox.put("TODOLIST",toDoList);
  }

}