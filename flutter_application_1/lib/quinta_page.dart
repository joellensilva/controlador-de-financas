import 'package:flutter/material.dart';
import 'package:flutter_application_1/notas.dart';
import 'package:flutter_application_1/notas_card.dart';
import 'BD.dart';

class QuintaPage extends StatefulWidget {
  const QuintaPage({Key? key}) : super(key: key);

  @override
  State<QuintaPage> createState() => _QuintaPageState();
}

class _QuintaPageState extends State<QuintaPage> {
  List<Notas> lista = BD.notas;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF1E5234),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: buildListView(context),
        ),
      );
  }
  buildListView(BuildContext context){
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 1,
        childAspectRatio: 6.5,
        mainAxisSpacing: 5
      ),
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return NotasCard(
          notas: lista[index],
        );
      },
    );
}
}