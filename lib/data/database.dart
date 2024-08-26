import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase{

  List toDoList = [];

  // reference box
  final _myBox = Hive.box('myBox');

  // first time ever opening this app
  void createInitialData(){
    toDoList = [
      ["Make Tutorial", false],
      ["Do Exercise", false],
    ];
  }

  //load data 
  void loadData(){
    toDoList = _myBox.get("TODOLIST");
  }

  void updateData(){
    _myBox.put("TODOLIST", toDoList);
  }

}