import 'dart:convert';

import 'package:flutter_application_1/data/db_helper.dart';
import 'package:sqflite/sqlite_api.dart';

class UsuarioDao {
  Future<List<UsuarioDao>> listarUsuarios() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM USUARIO';
    var result = await db.rawQuery(sql);

    List<UsuarioDao> lista = <UsuarioDao>[];
    for (var json in result) {
      UsuarioDao usuario = UsuarioDao.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }
}

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
}
