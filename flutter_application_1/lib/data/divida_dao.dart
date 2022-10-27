import 'dart:convert';

import 'package:flutter_application_1/data/db_helper.dart';
import 'package:flutter_application_1/domain/divida.dart';
import 'package:sqflite/sqlite_api.dart';

class DividaDao {

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

/*
class Notas {
  Future<List<Notas>> listarDividas() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM USUARIO';
    var result = await db.rawQuery(sql);

    List<Notas> lista = <Notas>[];
    for (var json in result) {
      Notas divida = Notas.fromJson(json);
      lista.add(divida);
    }

    return lista;
  }
*/
