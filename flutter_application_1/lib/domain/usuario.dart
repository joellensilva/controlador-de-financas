import 'dart:ffi';

class Usuario {
  late final String email;
  late final String nome;
  late final String senha;

  Usuario({required this.email, required this.nome, required this.senha});

  Map<String, Object?> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();

    data['email'] = email;
    data['nome'] = nome;
    data['senha'] = senha;
    
    return data;
  }

  Usuario.fromJson(Map<String, dynamic> json) {
    email = json['email'];
    nome = json['nome'];
    senha = json['senha'];
  }
}
