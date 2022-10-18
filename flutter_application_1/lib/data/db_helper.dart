import 'dart:async';

import 'package:path/path.dart';
import 'package:sqflite/sqflite.dart';

class DBHelper {

  Future<Database> initDB() async {
    String path = await getDatabasesPath();
    String databasePath = join(path, "financas.db");
    Database db = await openDatabase(
      databasePath,
      version: 1,
      onCreate: onCreate,
    );

    print(databasePath);
    return db;

  }

  Future<FutureOr<void>> onCreate(Database db, int version)  async{
    String sql = 'create table USUARIOS (id INTEGER PRIMARY KEY, email varchar(100), senha varchar(100))';
    await db.execute(sql);
  }
}