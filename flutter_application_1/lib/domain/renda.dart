import 'dart:ffi';

import 'package:flutter_application_1/data/renda_dao.dart';

class Renda {
  late final Float salario;
  late final Float reserva;

  Renda({required this.salario, required this.reserva});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['salario'] = salario;
    data['reserva'] = reserva;

    return data;
  }

  Renda.fromJson(Map<String, dynamic> json) {
    salario = json['salario'];
    reserva = json['reserva'];
  }
}
