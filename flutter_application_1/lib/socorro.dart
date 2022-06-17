import 'package:flutter/material.dart';

class Socorro extends StatefulWidget {
  const Socorro({ Key? key }) : super(key: key);

  @override
  State<Socorro> createState() => _SocorroState();
}

class _SocorroState extends State<Socorro> {
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
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Usuário:',
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Renda Mensal:',
            ),
          ),
          child: TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              hintText: 'Meta de Reserva:',
            ),
          ),
        ]
      ),
    );
  }

}