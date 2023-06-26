import 'package:dojo/models/tasks.dart';
import 'package:flutter/material.dart';
import 'package:dojo/utilities/constants.dart';

class TaskTile extends StatelessWidget {

  final bool? isChecked ;
  final String taskText;
  final void Function(bool? value) checkboxCallback ;
  VoidCallback deleteTaskCallback;
  TaskTile({required this.taskText, this.isChecked ,required this.checkboxCallback , required this.deleteTaskCallback});


  @override
  Widget build(BuildContext context) {
    return ListTile(
      onLongPress: deleteTaskCallback,
      leading: Text(
        taskText,
        style: TextStyle( decoration: isChecked! ? TextDecoration.lineThrough : null ),
      ),
      trailing: Checkbox(
        activeColor: kOceanBlueColor,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
    );
  }
}
