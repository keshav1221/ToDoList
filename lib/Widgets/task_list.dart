import 'package:flutter/material.dart';
import 'task_tile.dart';
import 'package:todolistapp/Models/tasks.dart';
import 'package:provider/provider.dart';
import 'package:todolistapp/Models/task_data.dart';

class TaskList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context,taskdata,child){
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskName: taskdata.tasks[index].taskName,
                isChecked: taskdata.tasks[index].isDone,
                toggleCheckBoxState: (checkBoxState) {
                  taskdata.check(taskdata.tasks[index]);
                },
              longPressState:(){
                taskdata.longPresss(taskdata.tasks[index]);
              },
                );
          },
          itemCount: taskdata.taskLen,
        );
      },
    );
  }
}
