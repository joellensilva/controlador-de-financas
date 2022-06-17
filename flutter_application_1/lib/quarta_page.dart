import 'package:flutter/material.dart';

class QuartaPage extends StatefulWidget {
  const QuartaPage({ Key? key }) : super(key: key);

  @override
  State<QuartaPage> createState() => _QuartaPageState();
}

class _QuartaPageState extends State<QuartaPage> {
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
             //const Text(),
          ],
        ), 
        ),
    );
  }

}