import 'package:flutter/material.dart';
class TaskTile extends StatelessWidget {
  @override
  final bool isChecked;
  final String taskName;
  final Function toggleCheckBoxState;
  final Function longPressState;
  TaskTile({required this.taskName,required this.isChecked,required this.toggleCheckBoxState,required this.longPressState});
  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: (){longPressState();},
      title: Text(taskName,style: TextStyle(
        decoration: isChecked?TextDecoration.lineThrough:null,
      ),),
      trailing: Checkbox(
        value: isChecked,
        onChanged: (value){toggleCheckBoxState(value);},
      )
    );
  }
}


