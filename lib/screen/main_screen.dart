import 'package:flutter/material.dart';
import 'package:flutter_app_to_do/models/task_repository.dart';
import 'package:flutter_app_to_do/screen/task_screen.dart';
import '../widgets/task_list.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatefulWidget{
  @override
  _MainScreenState createState() => _MainScreenState();
}
class _MainScreenState extends State<MainScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: Colors.blueAccent,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(top: 60,left: 30,right: 30,bottom: 30),
            child: Column(

              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  child: Icon(Icons.list,
                  size: 25,
                  color: Colors.blueAccent,),
                  backgroundColor: Colors.white60,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  'To Do',
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 3.0,
                    color: Colors.white60,
                  ),
                ),
                Text(
                  '${Provider.of<TaskRepository>(context).taskCount()} Tasks (${Provider.of<TaskRepository>(context).incompleteTaskCount()} Incomplete)',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white60,
                  ),
                ),
              ],
            ),
          ),
          Expanded(child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.white60,
            ),
            child: TaskList(),
          ),),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.blueAccent,
        child: Icon(Icons.add),
        onPressed: (){
          print('floating action button pressed');
          showModalBottomSheet(
              context: context, builder: (context)=> TaskScreen());
        },
      ),
    );
  }
}

