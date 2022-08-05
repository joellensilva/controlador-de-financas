import 'package:flutter/material.dart';
import 'package:flutter_application_1/notas_card.dart';

class SextaPage extends StatefulWidget {
  const SextaPage({Key? key}) : super(key: key);

  @override
  State<SextaPage> createState() => _SextaPageState();
}

class _SextaPageState extends State<SextaPage> {
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
        padding: const EdgeInsets.all(16.0),
        child: Center(
          child: buildListView(context)
        ),
      ),
    );
  }
  buildListView(BuildContext context){
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.38
      ),
      itemCount: lista.length,
      itemBuilder: (context, index) {
        return NotasCard(
          notas,: lista[index],
        );
      },
  }
}
