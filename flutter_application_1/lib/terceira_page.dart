import 'package:flutter/material.dart';
import 'package:flutter_application_1/quarta_page.dart';
import 'package:flutter_application_1/quinta_page.dart';
import 'package:flutter_application_1/sexta_page.dart';

class TerceiraPage extends StatefulWidget {
  const TerceiraPage({ Key? key }) : super(key: key);

  @override
  State<TerceiraPage> createState() => _TerceiraPageState();
}

class _TerceiraPageState extends State<TerceiraPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E5234),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: const <Widget>[
          
          Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
                child: Center(child: Text('Nome:')),
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
                child: Center(child: Text('Renda Mensal:')),
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
                child: Center(child: Text('Renda Mensal:')),
              ),
            ),
          ),

          /*
          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: const Text(
              "Nome:", 
              textAlign: TextAlign.left, 
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: const Text(
              "Renda mensal:", 
              textAlign: TextAlign.left, 
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),

          Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            child: const Text(
              "Meta de reserva:", 
              textAlign: TextAlign.left, 
              style: TextStyle(
                fontSize: 30,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          */

        ]
      ),
    );
  }
}