import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import CustomIcons from '../lib/presentation/custom_icons_icons.dart'

class SegundaPage extends StatefulWidget {
  const SegundaPage({ Key? key }) : super(key: key);

  @override
  State<SegundaPage> createState() => _SegundaPageState();
}

class _SegundaPageState extends State<SegundaPage> {
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
                '\$',
                    style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    )
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8),
                       ),
                       padding: const EdgeInsets.all(8),
                       child: Row(children: [
                       Tab(icon: Icon(CustomIcons.lock_outline)),
                       ]),
                    )
               const Text(
                '@',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                 ),
              ),
               const Text(
                'a',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.white
                 ),
              ),
              const Text(
                'Entrar',
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