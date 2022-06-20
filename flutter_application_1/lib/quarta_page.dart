import 'package:flutter/material.dart';
import 'package:flutter_application_1/terceira_page.dart';

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
          const SizedBox(height: 50),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "Qual é a sua dívida?", 
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "Qual é o valor?", 
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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
            padding:  EdgeInsets.symmetric(horizontal: 8, vertical: 8),
            child: Text(
              "Qual é a data de \nvencimento?", 
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
                fontWeight: FontWeight.normal,
                
              ),
            ),
          ),
          const Padding(
            padding:  EdgeInsets.symmetric(horizontal: 16, vertical: 8),
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

                        ElevatedButton(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return const TerceiraPage();
                                },
                              ),);
                          },
                          child: const Text(
                            'Salvar',
                            style: TextStyle(
                              fontSize: 15,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Color(0xFF1A422B),
                          ),
                        )
        
        ]
      ),
    );
  }

}