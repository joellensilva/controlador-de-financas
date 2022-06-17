import 'package:flutter/material.dart';

class SegundaPage extends StatefulWidget {
  const SegundaPage({ Key? key }) : super(key: key);

  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage> {
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
        padding: const EdgeInsets.all( 16.0),
        child: ListView(
          children: [
             const Text(
                '\$',
                    style: TextStyle(
                      fontSize: 80,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
              ),
               const Text(
                '@',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                 ),
              ),
          ],
        ), 
        ),
    );
  }

}