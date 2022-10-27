import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/segunda_page.dart';

class SetimaPage extends StatefulWidget {
  const SetimaPage({Key? key}) : super(key: key);

  @override
  State<SetimaPage> createState() => _SetimaPageState();
}

class _SetimaPageState extends State<SetimaPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Color(0xFF1A422B),
          title: Text(
            'Control\$',
            style: TextStyle(fontSize: 24),
          ),
        ),
        backgroundColor: Color(0xFF1E5234),
        body: ListView(
          children: [
            Form(
              key: _formKey,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const SizedBox(height: 90),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                      child: Text(
                        "Redefinir sua senha",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 25,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 8, vertical: 16),
                      child: Text(
                        "Preencha os campos abaixo",
                        textAlign: TextAlign.left,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Campo obrigatório";
                          }

                          return null;
                        },
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'E-mail:',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Campo obrigatório";
                          }

                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Definir sua nova senha:',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                      child: TextFormField(
                        validator: (value) {
                          if (value!.isEmpty) {
                            return "Campo obrigatório";
                          }

                          return null;
                        },
                        obscureText: true,
                        decoration: InputDecoration(
                          border: OutlineInputBorder(),
                          hintText: 'Confirmar sua nova senha:',
                          filled: true,
                          fillColor: Colors.white,
                        ),
                      ),
                    ),
                    SizedBox(height: 24),
                    ElevatedButton(
                      onPressed: onPressed,
                      child: const Text(
                        'Redefinir',
                        style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1A422B),
                      ),
                    ),
                  ]),
            ),
          ],
        ));
  }

  void onPressed() {
    /*String userDigitado = userController.text;
    String passwordDigitado = passwordController.text;
    String user = 'joao@gmail.com';
    String password = '123456';*/

    if (_formKey.currentState!.validate()) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) {
            return const SegundaPage();
          },
        ),
      );
    }
  }
}
