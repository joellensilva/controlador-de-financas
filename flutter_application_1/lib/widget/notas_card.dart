import 'package:flutter/material.dart';
import 'package:flutter_application_1/domain/notas.dart';

class NotasCard extends StatefulWidget {
  final Notas notas;

  const NotasCard({
    Key? key,
    required this.notas,
  }) : super(key: key);

  @override
  _NotasCardState createState() => _NotasCardState();
}

class _NotasCardState extends State<NotasCard> {
  Notas get notas => widget.notas;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(8),
      ),
      padding: const EdgeInsets.all(8),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 Text(
                  notas.localDivida,
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1E5234),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const Text(
                  'Data de vencimento:',
                  style: TextStyle(
                    fontSize: 16,
                    color: Color(0xFF1E5234),
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ],
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               Text(
                'R\$ ${notas.valor}',
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1E5234),
                  fontWeight: FontWeight.bold,
                ),
              ),
               Text(
                notas.data,
                style: TextStyle(
                  fontSize: 16,
                  color: Color(0xFF1E5234),
                  fontWeight: FontWeight.normal,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
