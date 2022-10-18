import 'package:controlador-de-financas\flutter_application_1\lib\domain\notas.dart';
class BD {
  static List<Usuarios> listarUsuarios = [
    // PacoteTuristico(
    //   imagem:
    //       'https://a.cdn-hotels.com/gdcs/production97/d402/6baff29c-e43b-4caf-a9e8-5dcf1279dea0.jpg?impolicy=fcrop&w=800&h=533&q=medium',
    //   titulo: 'Pacote Cancún 2022/2023',
    //   transporte: 'Aéreo - Hotel All inclusive',
    //   numDiarias: 5,
    //   numPessoas: 2,
    //   numParcelas: 6,
    //   precoAntigo: 6819,
    //   precoAtual: 2819,
    // ),
  ];
  static Future<List<PacoteTuristico>>  listarPacotes() async {
    print("ANTES");
    await Future.delayed(const Duration(seconds: 5));
    print("DEPOIS");
    return listarUsuarios;
  }
}