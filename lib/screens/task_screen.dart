import 'package:dojo/models/tasks_data.dart';
import 'package:dojo/screens/add_task.dart';
import 'package:dojo/utilities/constants.dart';
import 'package:flutter/material.dart';
import 'package:dojo/components/task_list.dart';
import 'package:provider/provider.dart';

class TaskScreen extends StatelessWidget {
  const TaskScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kDarkYellowColor,
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showModalBottomSheet(context: context, builder: (context)=>AddTaskScreen());
        },
        backgroundColor: kOceanBlueColor,
        child: Icon(Icons.add, color: kLightGrayColor,),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.only(top: 60, left: 35, bottom: 15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CircleAvatar(
                    backgroundColor: kWhiteColor,
                    radius: 35.0,
                    child: Icon(Icons.list, color: kOceanBlueColor, size: 40 ,),
                  ),
                  SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    'Dojo',
                    style: kBrandTextStyle,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: Text(
                      '${Provider.of<TasksData>(context).taskCount} Tasks',
                      style: kMediumTextStyle,
                    ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60.0),
                decoration: BoxDecoration(
                    color: kWhiteColor,
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(25.0),
                        topLeft: Radius.circular(25.0)
                    )
                ),
                child: TasksList(),
              ),
            )
          ],
        ),
      ),

    );
  }
}
