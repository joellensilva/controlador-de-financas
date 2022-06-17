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
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          
          const Padding(
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

          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 16),
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
              style: TextStyle(
                fontSize: 25,
                color: Colors.white
              ),
            ),
          ),

          /*
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextButton(
              child: Text('Minhas Dívidas'),
            ),
          ),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextButton(
              child: Text('Novas Dívidas'),
            ),
          ),
          
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
            child: TextButton(
              child: Text('Estatísticas'),
            ),
          ),
          */
        
        ]
      ),
    );
  }

}