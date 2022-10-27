import 'dart:convert';

import 'package:flutter_application_1/data/db_helper.dart';
import 'package:flutter_application_1/domain/renda.dart';
import 'package:sqflite/sqlite_api.dart';

class RendaDao {

  Future<List<Renda>> listarRendas() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM RENDA';
    var result = await db.rawQuery(sql);

    List<Renda> lista = <Renda>[];
    for (var json in result) {
      Renda renda = Renda.fromJson(json);
      lista.add(renda);
    }

    return lista;
  }
}