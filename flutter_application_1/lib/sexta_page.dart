import 'package:flutter/material.dart';

class SextaPage extends StatefulWidget {
  const SextaPage({ Key? key }) : super(key: key);

  @override
  State<SextaPage> createState() => _SextaPageState();
}

class _SextaPageState extends State<SextaPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E5234),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Center (
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Você gastou',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 32,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            ),
            Text(
              'R\$*****',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              'de R\$*****',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            ),
            const SizedBox(height: 16),
            Text(
              'Sua meta de reserva é',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            ),
            Text(
              'R\$*****',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            const SizedBox(height: 16),
            Text(
              'Isso significa que você tem',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.w300,
            ),
            ),
            Text(
              'R\$ *****',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 40,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
            Text(
              'Disponível',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 24,
              color: Colors.white,
              fontWeight: FontWeight.normal,
            ),
            ),
            const SizedBox(height: 16),
            Text(
              'Você está indo muito bem.\nParabéns!',
              textAlign: TextAlign.center,
              style: TextStyle(
              fontSize: 30,
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
            ),
          ],
        ),
        ),
    ),
    );
  }
}