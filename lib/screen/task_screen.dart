import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_to_do/models/task_item.dart';
import 'package:flutter_app_to_do/models/task_repository.dart';
import 'package:provider/provider.dart';
class TaskScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    String taskTitle;
   return SingleChildScrollView(
     child: Container(
       padding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
       child: Container(
         padding: EdgeInsets.symmetric(horizontal: 20, vertical: 30),
         color: Colors.white60,

         child: Column(
           crossAxisAlignment: CrossAxisAlignment.stretch,
           children: [
             Text(
                 'Add Task',
             textAlign: TextAlign.center,
             style: TextStyle(fontSize: 30, color: Colors.blueAccent, fontWeight: FontWeight.bold),
             ),
             SizedBox(
               height: 10,
             ),
             TextField(
               onChanged: (newText){
                 taskTitle=newText;
                 print(newText);
               },
               textAlign: TextAlign.center,
               style: TextStyle(color: Colors.blueAccent, fontSize: 20),
               autofocus: true,
             ), SizedBox(
               height: 10,
             ),
           FlatButton(
             onPressed:(){
               if(taskTitle!=null) {
                 Provider.of<TaskRepository>(context, listen: false)
                     .addTask(TaskItem(title: taskTitle, isDone: false));
               }
               Navigator.of(context).pop();
             },
             child: Text(
               'Add',
               style: TextStyle(color: Colors.white, fontSize: 20),
             ),
           color: Colors.blueAccent)

           ],
         ),
       ),
     ),
   );
  }
}