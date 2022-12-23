import 'dart:ffi';

import 'package:flutter_application_1/data/renda_dao.dart';

class Renda {
  late final double salario;
  late final double reserva;
  late final String fk_email;

  Renda({required this.salario, required this.reserva, required this.fk_email});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['salario'] = salario;
    data['reserva'] = reserva;
    data['fk_email'] = fk_email;

    return data;
  }

  Renda.fromJson(Map<String, dynamic> json) {
    salario = json['salario'];
    reserva = json['reserva'];
    fk_email = json['fk_email'];
  }
}
