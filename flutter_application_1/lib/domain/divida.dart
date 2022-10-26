import 'dart:ffi';

class Divida {
  late final String localDivida;
  late final String data;
  late final double valor;

  Divida({required this.localDivida, required this.data, required this.valor});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['localDivida'] = localDivida;
    data['data'] = data;
    data['valor'] = valor;
    
    return data;
  }

  Divida.fromJson(Map<String, dynamic> json) {
    localDivida = json['localDivida'];
    data = json['data'];
    valor = json['valor'];
  }
}
