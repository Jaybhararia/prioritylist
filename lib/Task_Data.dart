import 'package:flutter/cupertino.dart';
import 'Tasks.dart';

class Taskdata extends ChangeNotifier{
  List<Tasks> tasks = [
    Tasks('This is the sample task' , false),
    Tasks('Long press to delete' , false),
  ];

  void addtask(String newtitle){
    final task = Tasks(newtitle, false);
    tasks.add(task);
    notifyListeners();
  }

  void update(Tasks task){
    task.toggleDone();
    notifyListeners();
  }

  void delete(Tasks task) {
    tasks.remove(task);
    notifyListeners();
  }

}