import 'package:flutter/material.dart';
import 'package:wedad_application/todo_app/data/dummy_data.dart';
import 'package:wedad_application/todo_app/ui/widgets/task_widget.dart';

class AllTasks extends StatelessWidget{
  Function function;
  AllTasks(this.function);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(child: ListView.builder(
      itemCount:tasks.length,
      itemBuilder: (context,index){
        return TaskWidget(tasks[index],function);
      }));
  }
}