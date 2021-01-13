import 'package:flutter/cupertino.dart';
import 'package:flutter_app_to_do/models/task_item.dart';
import 'dart:collection';
class TaskRepository extends ChangeNotifier{
  List<TaskItem> tasks=[];
  TaskRepository(){
    addTask(TaskItem(title: 'Buy bread', isDone: true));
    addTask(TaskItem(title: 'Study CET 301', isDone: true));
    addTask(TaskItem(title: 'Study exam', isDone: true));
  }
  int taskCount(){
    return tasks.length;
  }
  int incompleteTaskCount(){
    //int count=0;
  //  for(var t in tasks){
  //    if(!t.isDone) count=count+1;

    return tasks.where((t)=> !t.isDone).length;
  }
  void addTask(TaskItem task){
    tasks.add(task);
    notifyListeners();
  }
  void toggleTask(TaskItem task){
    task.isDone= !task.isDone;
    notifyListeners();
  }
  void deleteTask(TaskItem task){
    tasks.remove(task);
    notifyListeners();
  }
}