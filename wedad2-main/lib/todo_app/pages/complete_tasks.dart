import 'package:flutter/material.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:flutter_application_2/todo_app/widgets/task_widget.dart';
import 'package:provider/provider.dart';

class CompleteTasks extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Consumer<TaskProvider>(
      builder: (context,p,x) {
        return Center(child: ListView.builder(
          itemCount:p.completeTasks.length,
          itemBuilder: (context,index){
            return TaskWidget(p.completeTasks[index]);
          }));
      }
    );
  }
}