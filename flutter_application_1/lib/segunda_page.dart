import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_application_1/terceira_page.dart';

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
      body: Padding (
        padding: const EdgeInsets.all(16.0),
        child: Center(
          //crossAxisAlignment: CrossAxisAlignment.spaceEvenly,
          child:
            Column (
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const SizedBox(height: 80),
                    Icon(
          Icons.attach_money ,
          size: 100,
          color: Colors.white,
        ),
        TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Usuário:',
                
                filled: true,
                fillColor: Colors.white,
              ),
            ),  
            const SizedBox(height: 24),
            TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Senha:',
                
                filled: true,
                fillColor: Colors.white,
              ),
            ),  
       /* Icon(
          Icons.alternate_email,
          size: 50,
          color: Color(0xFF1A422B),
        ),
        Icon(
          Icons.lock_outline_sharp,
          size: 50,
          color: Color(0xFF1A422B),
        ),*/
        
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
                            'Entrar',
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary:  Color(0xFF1A422B),
                          ),
                        )
              ],
             ),
             ),
        ), 
        );
  }

}