import 'package:flutter/material.dart';

class PrimeiraPage extends StatefulWidget {
  const PrimeiraPage({ Key? key }) : super(key: key);

  @override
  State<PrimeiraPage> createState() => _PrimeiraPageState();
}

class _PrimeiraPageState extends State<PrimeiraPage> {
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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView(
          children: [
             const Text(
                'Tops destinos mais buscados',
                    style: TextStyle(
                      fontSize: 16,
                      color: Color(0xFF1E5234),
                      fontWeight: FontWeight.bold,
                      backgroundColor: Colors.white,
                    ),
              ),
          ],
        ), 
        ),
    );
  }

}