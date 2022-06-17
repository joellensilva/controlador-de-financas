import 'package:flutter/material.dart';

class TerceiraPage extends StatefulWidget {
  const TerceiraPage({ Key? key }) : super(key: key);

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
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
        child: Column(
          children: [
           TextField(
              decoration: InputDecoration(
              border: OutlineInputBorder(),
                hintText: 'Usuário:',
              ),
        ), 
          TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Renda Mensal:',
            ),
        ), 
          TextField(
            decoration: InputDecoration(
            border: OutlineInputBorder(),
            hintText: 'Meta de reserva:',
            ),
        ), 
        ],
        ), 
    ),
      ],
    ),
    );
  }

}