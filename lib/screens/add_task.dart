import 'package:dojo/models/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:dojo/utilities/constants.dart';
import 'package:dojo/models/tasks.dart';
import 'package:provider/provider.dart';

class AddTaskScreen extends StatefulWidget {

  @override
  State<AddTaskScreen> createState() => _AddTaskScreenState();
}

class _AddTaskScreenState extends State<AddTaskScreen> {

  late String newTaskTitle;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xFF757575),
      child: Container(
        decoration: kBottomSheetContainerDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: kBrandTextStyle.copyWith(
                  color: kOceanBlueColor
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 40.0),
              child: TextField(
                autofocus: true,
                textAlign: TextAlign.center,
                onChanged: (value){
                  newTaskTitle = value;
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 30.0),
              padding: EdgeInsets.symmetric(horizontal: 40.0),
              child: Material(
                color: kOceanBlueColor,
                borderRadius: BorderRadius.all(Radius.circular(35.0)),
                child: MaterialButton(
                  onPressed:(){
                    Provider.of<TasksData>(context,listen: false).addTasks(newTaskTitle);
                    Navigator.pop(context);
                  },
                  child: Text(
                    'Add',
                    style: kMediumTextStyle,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
