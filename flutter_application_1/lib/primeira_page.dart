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
      backgroundColor: Color(0xFF1E5234),
      body: Padding (
        padding: const EdgeInsets.all(16.0),
        child: Center(
          //crossAxisAlignment: CrossAxisAlignment.center,
          child:
            Column (
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              const Text( 
                'Control\$',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                    ),
               const Text(
                'Você no controle da sua vida financeira!',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                 ),
              ),
              ],
             ),
             ),
        ), 
        );
  }

}