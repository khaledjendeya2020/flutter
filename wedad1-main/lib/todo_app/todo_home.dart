import 'package:flutter/material.dart';
import 'package:wedad_application/todo_app/data/dummy_data.dart';
import 'package:wedad_application/todo_app/models/task_model.dart';
import 'package:wedad_application/todo_app/ui/pages/all_tasks.dart';
import 'package:wedad_application/todo_app/ui/pages/complete_tasks.dart';
import 'package:wedad_application/todo_app/ui/pages/incomplete_tasks.dart';

class TodoHomeScreen extends StatefulWidget{

  @override
  State<TodoHomeScreen> createState() => _TodoHomeScreenState();
}

class _TodoHomeScreenState extends State<TodoHomeScreen> {
  changeTaskIsComplete(Task task){
   int index =  tasks.indexOf(task);
   tasks[index].isComplete = !tasks[index].isComplete;
   setState(() {
     
   });
   
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return DefaultTabController(
     length: 3,
     child: Scaffold(
       
       appBar: AppBar(
         backgroundColor:Colors.black87,
         title: Text('TODO APP'),
         bottom: TabBar(tabs: [
           Tab(icon: Icon(Icons.list),),
            Tab(icon: Icon(Icons.done),), 
            Tab(icon: Icon(Icons.cancel),)
         ],indicatorWeight: 5,
         indicatorColor: Colors.white,),
         ),
         body: Container(
           color: Colors.black87,
           child: TabBarView(children: [
             AllTasks(changeTaskIsComplete),
             CompleteTasks(changeTaskIsComplete),
             InCompleteTasks(changeTaskIsComplete)
           ]),
         ),
     ),
   );
  }
}