import 'dart:convert';

import 'package:flutter_application_1/data/db_helper.dart';
import 'package:flutter_application_1/domain/usuario.dart';
import 'package:sqflite/sqlite_api.dart';

class UsuarioDao {
  Future<List<Usuario>> listarUsuarios() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM USUARIO';
    var result = await db.rawQuery(sql);

    List<Usuario> lista = <Usuario>[];
    for (var json in result) {
      Usuario usuario = Usuario.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }
}
