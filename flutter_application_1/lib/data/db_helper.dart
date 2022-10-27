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

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    // USUARIO

    String user =
        'create table USUARIO (id INTEGER PRIMARY KEY, email varchar(100), nome varchar(100), senha varchar(100))';
    await db.execute(user);

    user =
        "INSERT INTO USUARIO (id, email, nome, senha) VALUES (1, 'joellen@gmail.com', 'Joellen Silva', '123456');";
    await db.execute(user);

    user =
        "INSERT INTO USUARIO (id, email, nome, senha) VALUES (2, 'gabriel@gmail.com', 'Biel', '123456');";
    await db.execute(user);

    user =
        "INSERT INTO USUARIO (id, email, nome, senha) VALUES (3, 'iago@gmail.com', 'Iago', '123456');";
    await db.execute(user);

    user =
        "INSERT INTO USUARIO (id, email, nome, senha) VALUES (4, 'jhonathan@gmail.com', 'Jhon', '123456');";
    await db.execute(user);

    // RENDA

    String income =
        'create table RENDA (id INTEGER PRIMARY KEY, id_user INTEGER FOREIGN KEY REFERENCES USUARIO (id), salario float, reserva float)';
    await db.execute(income);

    income =
        "INSERT INTO RENDA (id, id_user, salario, reserva) VALUES (1, 1, 1200, 200);";
    await db.execute(income);

    income =
        "INSERT INTO RENDA (id, id_user, salario, reserva) VALUES (2, 2, 800, 50);";
    await db.execute(income);

    income =
        "INSERT INTO RENDA (id, id_user, salario, reserva) VALUES (3, 3, 1000, 150);";
    await db.execute(income);

    income =
        "INSERT INTO RENDA (id, id_user, salario, reserva) VALUES (4, 4, 1800, 230);";
    await db.execute(income);

    // DIVIDA

    String debt =
        'create table DIVIDA (id INTEGER PRIMARY KEY, id_user INTEGER FOREIGN KEY, localDivida varchar (50), data varchar(10), valor float)';
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, id_user, localDivida, data, valor) VALUES (1, 1, 'Mercado São Luís', '30/10/2022', 87.50);";
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, id_user, localDivida, data, valor) VALUES (2, 1, 'Renner', '27/10/2022', 97.50);";
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, id_user, localDivida, data, valor) VALUES (3, 2, 'Riachuelo', '30/10/2022', 87.50);";
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, id_user, localDivida, data, valor) VALUES (4, 3, 'Americanas', '27/10/2022', 37.50);";
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, id_user, localDivida, data, valor) VALUES (4, 4, 'Americanas', '27/10/2022', 97.50);";
    await db.execute(debt);
  }
}
