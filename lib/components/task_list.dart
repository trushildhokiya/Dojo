import 'package:dojo/models/tasks_data.dart';
import 'package:flutter/material.dart';
import 'package:dojo/components/task_tile.dart';
import 'package:provider/provider.dart';

class TasksList extends StatelessWidget {
  const TasksList({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<TasksData>(
      builder: (context,taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            return TaskTile(
                taskText: taskData.tasks[index].name,
                isChecked: taskData.tasks[index].isCompleted,
                checkboxCallback: (newValue){
                  taskData.updateTask(taskData.tasks[index]);
                },
                deleteTaskCallback: (){
                  taskData.deleteTask(taskData.tasks[index]);
                },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
