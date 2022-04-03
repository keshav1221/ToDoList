import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:todolistapp/Widgets/task_list.dart';
import 'add_task_screen.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp/Models/task_data.dart';

class TasksScreen extends StatefulWidget {
  @override
  _TasksScreenState createState() => _TasksScreenState();
}

class _TasksScreenState extends State<TasksScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightBlueAccent,
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(context: context, builder: (context)=> AddTaskSheet()
          );
        },
        backgroundColor: Colors.lightBlueAccent,
        child: Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding:EdgeInsets.only(top:70.0,left:30.0,right: 30.0,bottom: 30.0),
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: Icon(
                    Icons.list,
                    color: Colors.lightBlueAccent,
                  size: 40.0,
                ),
                radius: 30.0,
                backgroundColor: Colors.white,
              ),
              Text("TO DOEY", style: TextStyle(
                color: Colors.white,
                fontSize: 50.0,
                fontWeight: FontWeight.w700
              ),),
              SizedBox(
                height: 10.0,
              ),
              Text("${Provider.of<TaskData>(context).taskLen} Tasks", style: TextStyle(
                color: Colors.white,
                fontSize: 18.0
              ),)
            ],
          ),),
            Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 20.0),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topLeft: Radius.circular(20.0),topRight: Radius.circular(20.0))
            ),
                  child: TaskList(),
          ))
        ],
      ),
    );
  }
}




