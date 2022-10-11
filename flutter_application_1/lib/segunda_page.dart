import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/setima_page.dart';
import 'package:flutter_application_1/oitava_page.dart';
import 'package:flutter_application_1/terceira_page.dart';

import 'home_page.dart';

class SegundaPage extends StatefulWidget {
  const SegundaPage({Key? key}) : super(key: key);

  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage> {
  TextEditingController userController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

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
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0xFF1E5234),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(children: [
          Form(
            key: _formKey,
            child: Center(
              //crossAxisAlignment: CrossAxisAlignment.spaceEvenly,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 80),
                  Icon(
                    Icons.attach_money,
                    size: 100,
                    color: Colors.white,
                  ),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Campo obrigatório";
                      }

                      return null;
                    },
                    controller: userController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Usuário:',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFormField(
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Campo obrigatório";
                      }

                      return null;
                    },
                    obscureText: true,
                    controller: passwordController,
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Senha:',
                      filled: true,
                      fillColor: Colors.white,
                    ),
                  ),
                  /* Icon(
          Icons.alternate_email,
          size: 50,
          color: Color(0xFF1A422B),
        ),
        Icon(
          Icons.lock_outline_sharp,
          size: 50,
          color: Color(0xFF1A422B),
        ),*/
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: onPressed,
                    style: ElevatedButton.styleFrom(
                        primary: const Color(0xFF1E5234)),
                    child: const Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.0),
                      child: Text(
                        'Entrar',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 90),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const SetimaPage();
                          }),
                        );
                      },
                      child: const Text(
                        'Esqueceu a senha?',
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.white,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1E5234),
                      )),
                  const SizedBox(height: 8),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) {
                            return const OitavaPage();
                          }),
                        );
                      },
                      child: const Text('Não tem uma conta? Cadastre-se!',
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.white,
                            fontWeight: FontWeight.normal,
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Color(0xFF1E5234),
                      )),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void onPressed() {
    String userDigitado = userController.text;
    String passwordDigitado = passwordController.text;

    String user = 'joao@gmail.com';
    String password = '123456';

    if (_formKey.currentState!.validate()) {
      if (userDigitado == user && passwordDigitado == password) {
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) {
              return const HomePage();
            },
          ),
        );
      } else {
        final snackbar = const SnackBar(
          behavior: SnackBarBehavior.floating,
          content: Text(
            'Usuario/Senha incorreto(s)!',
          ),
        );
        ScaffoldMessenger.of(context).showSnackBar(snackbar);
      }
    }
  }
}
