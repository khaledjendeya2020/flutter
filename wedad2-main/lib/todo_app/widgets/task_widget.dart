import 'package:flutter/material.dart';
import 'package:flutter_application_2/data/db_helper.dart';
import 'package:flutter_application_2/todo_app/models/task_model.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:provider/provider.dart';

class TaskWidget extends StatelessWidget {
  TaskModel task;
  TaskWidget(this.task);

  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Container(
        alignment: Alignment.bottomRight,
        child: Column(children: [
          Center(
            child: Text(''),
          ),
          Container(
            alignment:
                Alignment.lerp(Alignment.center, Alignment.centerRight, .924),

            // alignment: Alignment.bottomLeft,
            child: InkWell(
              onTap: () {
                SqlHelper.deleteTask(task);
                Provider.of<TaskProvider>(context, listen: false)
                    .deleteTask(task);
              },
              child: ImageIcon(
                AssetImage("images/trash.png"),
                color: Colors.red,
                size: 30,
              ),
            ),
          ),
        ]),
      ),
      Container(
        margin: EdgeInsets.only(left: 4, top: 4, right: 50),
        decoration: BoxDecoration(
            gradient: task.isComplete
                ? LinearGradient(colors: [
                    Color(0xdd8A39E1),
                    Color(0xaaB667F1),
                  ])
                : LinearGradient(colors: [
                    Color(0xddDD4A48),
                    Color(0xaaFF6464),
                  ]),
            // color: widget.task.isComplete?Colors.blue:Colors.red,

            borderRadius: BorderRadius.circular(10)),
        child: Stack(children: [
          CheckboxListTile(
            side: BorderSide(width: .4),
            activeColor: Colors.white,
            checkColor: Colors.black,
            value: task.isComplete,
            title: Text(
              task.name,
              style: TextStyle(fontSize: 18),
            ),
            onChanged: (v) {
              Provider.of<TaskProvider>(context, listen: false)
                  .updateTask(task);
            },
          ),
        ]),
      ),
    ]);
  }
}
