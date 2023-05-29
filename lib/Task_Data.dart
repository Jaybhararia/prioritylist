import 'package:flutter/cupertino.dart';
import 'Tasks.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Taskdata extends ChangeNotifier{
  List<Tasks> tasks = [
    Tasks('This is the sample task' , false),
    Tasks('Long press to delete' , false),
    Tasks('Tick the checkbox for completion' , false)
  ];

  void addTask(String taskName) {
    Tasks newTask = Tasks(taskName, false);
    tasks.add(newTask);
    saveTasks(); // Save the tasks after adding a new task
    notifyListeners();
  }

  // Save the tasks to shared preferences
  void saveTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> taskList = tasks.map((task) => task.name).toList();
    await prefs.setStringList('tasks', taskList);
  }

  // Load the tasks from shared preferences
  Future<void> loadTasks() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String> taskList = prefs.getStringList('tasks') ?? [];
    tasks = taskList.map((taskName) => Tasks(taskName, false)).toList();
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

