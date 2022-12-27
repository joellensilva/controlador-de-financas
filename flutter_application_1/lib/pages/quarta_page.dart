import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/terceira_page.dart';
import 'package:flutter_application_1/data/divida_dao.dart';
import 'package:flutter_application_1/domain/divida.dart';


import 'home_page.dart';

class QuartaPage extends StatefulWidget {
  const QuartaPage({Key? key}) : super(key: key);

  @override
  State<QuartaPage> createState() => _QuartaPageState();
}

class _QuartaPageState extends State<QuartaPage> {
  final _formKey = GlobalKey<FormState>();

  TextEditingController localDividaController = TextEditingController();
  TextEditingController valorController = TextEditingController();
  TextEditingController dataController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0xFF1E5234),
        //body: buildBody(),
        body: buildFutureBuilder(),
      ),
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

/*
  buildBody() {
    return ListView(
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const <Widget>[

            const SizedBox(height: 50),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                "Qual é a sua dívida?",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),
            
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                controller: localDividaController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo obrigatório";
                  }

                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 16),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                "Qual é o valor?",
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                controller: valorController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo obrigatório";
                  }

                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 16),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
              child: Text(
                "Qual é a data de \nvencimento?",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.normal,
                ),
              ),
            ),

            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              child: TextFormField(
                controller: dataController,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Campo obrigatório";
                  }

                  return null;
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),

            const SizedBox(height: 24),

            ElevatedButton(
              onPressed: onPressed,
              child: const Text(
                'Salvar',
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFF1A422B),
              ),
            ),
          ]
        ),
      ],
    );
  }

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String localDividaDigitado = localDividaController.text;
      String dataDigitado = dataController.text;
      double valorDigitado = double.parse(valorController.text);

      Divida dividaCriado =
      Divida(localDivida: localDividaDigitado, data: dataDigitado, valor: valorDigitado);
      await DividaDao().salvarDividas(divida: dividaCriado);

      showSnackBar('Dívida foi salvo com sucesso!');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
      );

    } else {
      showSnackBar("Erro na validação");
    }
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
*/

buildColumn(List<Usuario> lista, context) {

  return ListView(
    children: [
      Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[

          const SizedBox(height: 50),
            
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "Qual é a sua dívida?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
            
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              controller: localDividaController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Campo obrigatório";
                }

                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 16),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "Qual é o valor?",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              controller: valorController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Campo obrigatório";
                }

                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 16),

          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "Qual é a data de \nvencimento?",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),

          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: TextFormField(
              controller: dataController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return "Campo obrigatório";
                }

                return null;
              },
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '',
                filled: true,
                fillColor: Colors.white,
              ),
            ),
          ),

          const SizedBox(height: 24),

          ElevatedButton(
            onPressed: onPressed,
            child: const Text(
              'Salvar',
              style: TextStyle(
                fontSize: 15,
                color: Colors.white,
              ),
            ),
            style: ElevatedButton.styleFrom(
              primary: Color(0xFF1A422B),
            ),
          ),
        ],
      ),
    ],
  );

  onPressed() async {
    if (_formKey.currentState!.validate()) {
      String localDividaDigitado = localDividaController.text;
      String dataDigitado = dataController.text;
      double valorDigitado = double.parse(valorController.text);
      String fk_emailDigitado = lista[0].email;

      Divida dividaCriado =
      Divida(localDivida: localDividaDigitado, data: dataDigitado, valor: valorDigitado, fk_email: fk_emailDigitado);
      await DividaDao().salvarDividas(divida: dividaCriado);

      showSnackBar('Dívida foi salvo com sucesso!');
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const HomePage();
          },
        ),
      );

    } else {
      showSnackBar("Erro na validação");
    }
  }

  showSnackBar(String msg) {
    final snackBar = SnackBar(
      behavior: SnackBarBehavior.floating,
      margin: const EdgeInsets.symmetric(
        vertical: 80,
        horizontal: 32,
      ),
      content: Text(msg),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
