import 'package:flutter/material.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:flutter_application_2/todo_app/widgets/task_widget.dart';
import 'package:provider/provider.dart';

class AllTasks extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskProvider>(builder: (c, provider, x) {
      return Stack(
        children: [
          Center(
              child: ListView.builder(
                  itemCount: provider.allTasks.length,
                  itemBuilder: (context, index) {
                    return TaskWidget(provider.allTasks[index]);
                  })),
        ],
      );
    });
  }
}
