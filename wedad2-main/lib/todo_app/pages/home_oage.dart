import 'package:flutter/material.dart';
import 'package:flutter_application_2/todo_app/pages/all_tasks.dart';
import 'package:flutter_application_2/todo_app/pages/complete_tasks.dart';
import 'package:flutter_application_2/todo_app/pages/inComplete_tasks.dart';
import 'package:flutter_application_2/todo_app/pages/new_task_page.dart';

class TodoHomeScreen extends StatefulWidget{

  @override
  State<TodoHomeScreen> createState() => _TodoHomeScreenState();
}

class _TodoHomeScreenState extends State<TodoHomeScreen> {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return DefaultTabController(
     length: 3,
     child: Scaffold(
       
       appBar: AppBar(
         actions: [
           IconButton(onPressed: (){
             Navigator.of(context).push(MaterialPageRoute(builder: (context){
               return NewTaskPage();
             }));
           }, icon: Icon(Icons.add))
         ],
       
         title: Text('TODO APP'),
         bottom: TabBar(tabs: [
           Tab(icon: Icon(Icons.list),),
            Tab(icon: Icon(Icons.done),), 
            Tab(icon: Icon(Icons.cancel),)
         ],indicatorWeight: 5,
         indicatorColor: Colors.white,),
         ),
         body: Container(
          
           child: TabBarView(children: [
             AllTasks(),
             CompleteTasks(),
             InCompleteTasks()
           ]),
         ),
     ),
   );
  }
}