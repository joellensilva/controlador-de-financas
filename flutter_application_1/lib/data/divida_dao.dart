import 'dart:convert';

import 'package:flutter_application_1/data/db_helper.dart';
import 'package:flutter_application_1/domain/divida.dart';
import 'package:sqflite/sqlite_api.dart';

class DividaDao {

  salvarDividas({required Divida divida}) async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    db.insert('divida', divida.toJson());
  }

  Future<List<Divida>> listarDividas() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM DIVIDA';
    var result = await db.rawQuery(sql);

    List<Divida> lista = <Divida>[];
    for (var json in result) {
      Divida divida = Divida.fromJson(json);
      lista.add(divida);
    }
    return lista;
  }
}

