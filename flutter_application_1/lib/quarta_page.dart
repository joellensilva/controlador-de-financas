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
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Text(
              "Qual é a sua dívida?", 
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
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
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Text(
              "Qual é o valor?", 
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
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
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: Text(
              "Qual é a data?", 
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: '',
                filled: true,
                fillColor: Colors.white,
              ),
            ),  
          ),

          const SizedBox(height: 24),

          /*const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextButton(
              child: Text('Salvar'),
            ),
          ),*/
        
        ]
      ),
    );
  }

}