import 'dart:collection';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:dojo/models/tasks.dart';

class TasksData extends ChangeNotifier{
  List<Task> _tasks = [];

  //getter method
  int get taskCount{
    return _tasks.length;
  }

  void addTasks(String taskTitle){
    var task = Task(name: taskTitle);
    _tasks.add(task);
    notifyListeners();
  }

  UnmodifiableListView<Task> get tasks{
    return UnmodifiableListView(_tasks);
  }

  void updateTask(Task task){
    task.toggleIsCompleted();
    notifyListeners();
  }

  void deleteTask(Task task){
    _tasks.remove(task);
    notifyListeners();
  }
}