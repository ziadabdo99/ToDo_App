// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:to_do/models/task_data.dart';
import 'package:to_do/widgets/task_tile.dart';
import 'package:provider/provider.dart';
import 'task_tile.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (BuildContext context, taskData, child) {
        return ListView.builder(
          itemCount: taskData.tasks.length,
          itemBuilder: (context, index) {
            return TaskTile(
                isChecked: taskData.tasks[index].isDone,
                taskTitle: taskData.tasks[index].name,
                checkBoxChange: (newValue) {
                  taskData.updataTask(taskData.tasks[index]);
                },
                listTileDelete: () {
                  taskData.deleteTask(taskData.tasks[index]);
                });
          },
        );
      },
    );
  }
}
