import 'package:flutter/cupertino.dart';
import 'package:to_do/models/tasks.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [];
  void addTask(String newTaskTitle) {
    tasks.add(Task(name: newTaskTitle));
    notifyListeners();
  }

  void updataTask(Task task) {
    task.doneChange();
    notifyListeners();
  }

  void deleteTask(Task task) {
    tasks.remove(task);
    notifyListeners();
  }
}
