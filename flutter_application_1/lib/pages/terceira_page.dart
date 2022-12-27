import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/data/usuario_dao.dart';
import 'package:flutter_application_1/domain/usuario.dart';

class TerceiraPage extends StatefulWidget {
  const TerceiraPage({Key? key}) : super(key: key);

  @override
  State<TerceiraPage> createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E5234),
      body: buildFutureBuilder(),
    );
  }

  buildFutureBuilder() {
    Future<List<Usuario>> futureLista = UsuarioDao().listarUsuarios();

    return FutureBuilder<List<Usuario>>(
      future: futureLista,
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          List<Usuario> lista = snapshot.data ?? [];
          return buildColumn(lista, context);
        }
        return const Center(child: CircularProgressIndicator());
      },
    );
  }
}

buildColumn(List<Usuario> lista, context) {

  return ListView(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Text(
              "Control\$ com você!",
              textAlign: TextAlign.left,
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: SizedBox(
                width: 1000,
                height: 50,
                child: Center(child: Text('${lista[0].nome}')),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: SizedBox(
                width: 1000,
                height: 50,
                child: Center(child: Text('Renda Mensal:')),
              ),
            ),
          ),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 1),
            child: Card(
              elevation: 0,
              color: Colors.white,
              child: SizedBox(
                width: 1000,
                height: 50,
                child: Center(child: Text('Meta de Reserva:')),
              ),
            ),
          ),

        ],
      ),
    ],
  );
}
