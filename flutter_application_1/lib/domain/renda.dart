import 'dart:ffi';

class Renda {
  late final float salario;
  late final float reserva;

  Usuario({required this.salario, required this.reserva});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['salario'] = salario;
    data['reserva'] = reserva;
    
    return data;
  }

  Usuario.fromJson(Map<String, dynamic> json) {
    salario = json['salario'];
    reserva = json['reserva'];
  }
}
