import 'package:flutter/material.dart';
import 'tasks.dart';
import 'dart:collection';
import 'package:flutter/foundation.dart';

class TaskData extends ChangeNotifier{
  List<Tasks> _tasks = [
    Tasks(taskName: " Buy Milk"),
    Tasks(taskName: " Buy Bread"),
    Tasks(taskName: " Buy TV")
  ];
  UnmodifiableListView get tasks
  {
    return UnmodifiableListView(_tasks);
  }
  int get taskLen{
    return _tasks.length;
  }
  void AddNewTask( String newTaskName)
  {
    final task=Tasks(taskName: newTaskName);
    _tasks.add(task);
    notifyListeners();
  }
  void check(Tasks task)
  {
    task.toggleDone();
    notifyListeners();
  }
  void longPresss(Tasks task)
  {
    _tasks.remove(task);
    notifyListeners();
  }
}