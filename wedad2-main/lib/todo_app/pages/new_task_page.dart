import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_application_2/todo_app/models/task_model.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:provider/provider.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:flutter_application_2/data/db_helper.dart';

class NewTaskPage extends StatelessWidget {
  String taskTitle = '';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add New Task'),
        ),
        body: Column(
          children: [
            Container(
              margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
              child: TextField(
                onChanged: (value) {
                  this.taskTitle = value;
                },
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15)),
                    labelText: 'Enter Your Task Name'),
              ),
            ),
            Selector<TaskProvider, bool>(builder: (conext, x, y) {
              return CheckboxListTile(
                  title: Text('New Task Status'),
                  value: x,
                  onChanged: (v) {
                    Provider.of<TaskProvider>(context, listen: false)
                        .changeIsComplete(v);
                  });
            }, selector: (context, provier) {
              return provier.isComplete;
            }),
            InkWell(
              onTap: () {
                TaskModel taskModel = TaskModel(
                    isComplete:
                        Provider.of<TaskProvider>(context, listen: false)
                            .isComplete,
                    name: this.taskTitle);

                Provider.of<TaskProvider>(context, listen: false)
                    .addNewTask(taskModel);
                Navigator.pop(context);
              },
              child: Container(
                alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.blue),
                width: MediaQuery.of(context).size.width,
                child: Text(
                  'Add Task',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            )
          ],
        ));
  }
}
