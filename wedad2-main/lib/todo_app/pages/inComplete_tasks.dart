import 'package:flutter/material.dart';
import 'package:flutter_application_2/todo_app/providers/todo_provider.dart';
import 'package:flutter_application_2/todo_app/widgets/task_widget.dart';
import 'package:provider/provider.dart';

class InCompleteTasks extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: ListView.builder(
      itemCount:Provider.of<TaskProvider>(context).inCompleteTasks.length,
      itemBuilder: (context,index){
        return TaskWidget(Provider.of<TaskProvider>(context).inCompleteTasks[index]);
      }));
  }
}