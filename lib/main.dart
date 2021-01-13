import 'package:flutter/material.dart';
import 'package:flutter_app_to_do/screen/main_screen.dart';
import 'package:provider/provider.dart';
import 'package:flutter_app_to_do/models/task_repository.dart';

void main() {
  runApp(
    ChangeNotifierProvider<TaskRepository>
      (create: (context)=>TaskRepository(),
    child:
    MaterialApp(
    home: MainScreen(),
    ),
  ),);
}


