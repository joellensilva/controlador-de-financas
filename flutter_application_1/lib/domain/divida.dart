import 'dart:ffi';

class Divida {
  late final String localDivida;
  late final String data;
  late final double valor;
  late final String fk_email;

  Divida({required this.localDivida, required this.data, required this.valor, required this.fk_email});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['localDivida'] = localDivida;
    data['data'] = data;
    data['valor'] = valor;
    data['fk_email'] = fk_email;
    
    return data;
  }

  Divida.fromJson(Map<String, dynamic> json) {
    localDivida = json['localDivida'];
    data = json['data'];
    valor = json['valor'];
    fk_email = json['fk_email'];
  }
}
