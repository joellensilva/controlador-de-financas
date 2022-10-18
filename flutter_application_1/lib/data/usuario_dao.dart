import 'dart:convert';

import 'package:flutter_application_1\lib\data\db_helper.dart';

class UsuarioDao {

 Future<List<Usuario>> listarUsuarios() async {
    DBHelper dbHelper = DBHelper();
    Database db = await dbHelper.initDB();

    String sql = 'SELECT * FROM usuario';
    var result = await db.rawQuery(sql);

    List<Usuario> lista = <Usuario>[];
    for (var json in result) {
      Usuarios usuario = Usuario.fromJson(json);
      lista.add(usuario);
    }

    return lista;
  }

}