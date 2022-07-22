import 'dart:developer';
import 'dart:io';
import 'package:flutter_application_2/todo_app/models/task_model.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class SqlHelper {
  static late Database database;
  static initDatabase() async {
    // GET THE APPLICATION DIRECTORY
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = appDocDir.path + '/khaledTasks.db';
    // CREATE CONNECTION TO DATABASE
    database = await openDatabase(databasePath, version: 2, onCreate: (db, v) {
      db.execute(
          'CREATE TABLE KhaledTasks (id INTEGER PRIMARY KEY AUTOINCREMENT, taskName TEXT, isComplete INTEGER)');
    });
  }

  static addTaskToDo(TaskModel task) {
    database.insert('KhaledTasks',
        {'taskName': task.name, 'isComplete': task.isComplete ? 1 : 0});
  }

  static updateTask(TaskModel task) {
    database.update('KhaledTasks',
        {'taskName': task.name, 'isComplete': task.isComplete ? 1 : 0});
  }

  static getAllTasks() async {
    List<Map<String, Object?>> rowMaps = await database.query('KhaledTasks');
    log(rowMaps.length.toString());
  }

  static deleteTask(TaskModel task) {
    database.delete('KhaledTasks', where: '${task}');
  }
}
