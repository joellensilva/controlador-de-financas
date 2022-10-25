import 'dart:ffi';

class Notas {
  late final String localDivida;
  late final String data;
  late final double valor;

  Notas({required this.localDivida, required this.data, required this.valor});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['localDivida'] = localDivida;
    data['data'] = data;
    data['valor'] = valor;
    return data;
  }

  Notas.fromJson(Map<String, dynamic> json) {
    localDivida = json['localDivida'];
    data = json['data'];
    valor = json['valor'];
  }
}
