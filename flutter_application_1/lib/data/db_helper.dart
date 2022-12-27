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
    return db;
  }

  Future<FutureOr<void>> onCreate(Database db, int version) async {
    // USUARIO

    String user =
        'create table USUARIO (email varchar(100) PRIMARY KEY, nome varchar(100), senha varchar(100))';
    await db.execute(user);

    user =
        "INSERT INTO USUARIO (email, nome, senha) VALUES ('joellen@gmail.com', 'Joellen', '123456');";
    await db.execute(user);

    user =
        "INSERT INTO USUARIO (email, nome, senha) VALUES ('gabriel@gmail.com', 'Gabriel', '123456');";
    await db.execute(user);

    user =
        "INSERT INTO USUARIO (email, nome, senha) VALUES ('iago@gmail.com', 'Iago', '123456');";
    await db.execute(user);

    user =
        "INSERT INTO USUARIO (email, nome, senha) VALUES ('jhonathan@gmail.com', 'Jhonathan', '123456');";
    await db.execute(user);

    // RENDA

    String income =
        'create table RENDA (id INTEGER PRIMARY KEY, salario double, reserva double, fk_email varchar(100))';
    await db.execute(income);

    income =
        "INSERT INTO RENDA (id, salario, reserva, fk_email) VALUES (1, 200, 200, 'joellen@gmail.com');";
    await db.execute(income);

    income =
        "INSERT INTO RENDA (id, salario, reserva, fk_email) VALUES (2, 800, 50, 'gabriel@gmail.com');";
    await db.execute(income);

    income =
        "INSERT INTO RENDA (id, salario, reserva, fk_email) VALUES (3, 1000, 150, 'iago@gmail.com');";
    await db.execute(income);

    income =
        "INSERT INTO RENDA (id, salario, reserva, fk_email) VALUES (4, 1800, 230, 'jhonathan@gmail.com');";
    await db.execute(income);

    // DIVIDA

    String debt =
        'create table DIVIDA (id INTEGER PRIMARY KEY, localDivida varchar (50), data varchar(10), valor float, fk_email varchar(100))';
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, localDivida, data, valor, fk_email) VALUES (1, 'Mercado São Luís', '30/10/2022', 87.50, 'iago@gmail.com');";
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, localDivida, data, valor, fk_email) VALUES (2, 'Renner', '27/10/2022', 97.50, 'iago@gmail.com');";
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, localDivida, data, valor, fk_email) VALUES (3, 'Riachuelo', '30/10/2022', 87.50, 'jhonathan@gmail.com');";
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, localDivida, data, valor, fk_email) VALUES (4, 'Americanas', '27/10/2022', 37.50, 'gabriel@gmail.com');";
    await db.execute(debt);

    debt =
        "INSERT INTO DIVIDA (id, localDivida, data, valor, fk_email) VALUES (5, 'Americanas', '27/10/2022', 97.50, 'joellen@gmail.com');";
    await db.execute(debt);
  }
}
