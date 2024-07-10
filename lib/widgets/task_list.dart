import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Model/task.dart';
import 'package:todoey/Model/task_data.dart';
import 'package:todoey/widgets/task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(builder: (context, taskData, child) {
      return ListView.builder(
          itemCount: taskData.taskCount,
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TaskTile(
              onlongPress: () {
                taskData.deleteTask(task);
              },
              taskTitle: task.name,
              isChecked: task.isDone,
              checkBoxCallBack: (checkBoxState) {
                taskData.upDateTask(task);
              },
            );
          });
    });
  }
}
