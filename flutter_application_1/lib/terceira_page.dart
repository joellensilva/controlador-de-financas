import 'package:flutter/material.dart';
import 'package:flutter_application_1/quarta_page.dart';
import 'package:flutter_application_1/quinta_page.dart';
import 'package:flutter_application_1/sexta_page.dart';

class TerceiraPage extends StatefulWidget {
  const TerceiraPage({Key? key}) : super(key: key);

  @override
  State<TerceiraPage> createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage> {
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
      body: Column(
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
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Usuário:',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Renda Mensal:',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Meta de Reserva:',
                  filled: true,
                  fillColor: Colors.white,
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: Text(
                "Dívidas",
                textAlign: TextAlign.left,
                style: TextStyle(fontSize: 25, color: Colors.white),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const QuintaPage();
                    },
                  ),
                );
              },
              child: const Text(
                'Minhas dívidas',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF1E5234),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const QuartaPage();
                    },
                  ),
                );
              },
              child: const Text(
                'Nova dívida',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF1E5234),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return const SextaPage();
                    },
                  ),
                );
              },
              child: const Text(
                'Estatísticas',
                style: TextStyle(
                  fontSize: 20,
                  color: Color(0xFF1E5234),
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Colors.white,
              ),
            )
          ]),
    );
  }
}
