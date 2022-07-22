import 'dart:io';

import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';
import 'package:test/models/products.dart';

class SqlHelper {
  static late Database database;
  static initDatabase() async {
    Directory appDocDir = await getApplicationDocumentsDirectory();
    String databasePath = appDocDir.path + '/ProductsSQL.db';
    database = await openDatabase(databasePath, version: 1, onCreate: (db, v) {
      db.execute(
          'CREATE TABLE ProductsSQL (id INTEGER PRIMARY KEY, TitelProduct TEXT, PriceProduct TEXT,descriptionProduct TEXT,image TEXT, isFavourite INTEGER)');
    });
  }

  static addTaskToDo(Product product) {
    database.insert('ProductsSQL', {
      'TitelProduct': product.title,
      'PriceProduct': product.price,
      'descriptionProduct': product.description,
      'image': product.image,
      'isFavourite': product.isFavourite ? 1 : 0
    });
  }

  updateTask(Product product) {
    database.update('ProductsSQL', {
      'TitelProduct': product.title,
      'PriceProduct': product.price,
      'descriptionProduct': product.description,
      'image': product.image,
      'isFavourite': product.isFavourite ? 1 : 0
    });
  }

  getAllTasks() async {
    List<Map<String, Object?>> rowMaps = await database.query('ProductsSQL');
  }

  static deleteTask(Product product) {
    database.delete('ProductsSQL', where: '${product}');
  }
}
