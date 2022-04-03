import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp/Models/task_data.dart';

String newTaskName="";
class AddTaskSheet extends StatelessWidget {

  @override

  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(20.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(20.0), topLeft: Radius.circular(20.0)),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              "Add Tasks",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.lightBlueAccent,
                fontSize: 30.0,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20.0),
              onChanged: (textVal) {
                newTaskName = textVal;
              },
            ),
            TextButton(
              onPressed: () {
                Provider.of<TaskData>(context,listen: false).AddNewTask(newTaskName);
                Navigator.pop(context);
              },
              child: Text(
                "ADD",
                style: TextStyle(color: Colors.white, fontSize: 18.0),
              ),
              style: ButtonStyle(
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.lightBlueAccent)),
            )
          ],
        ),
      ),
    );
  }
}
