import 'package:flutter_application_1/terceira_page.dart';
import 'package:flutter_application_1/quarta_page.dart';
import 'package:flutter_application_1/quinta_page.dart';
import 'package:flutter_application_1/sexta_page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;
  List<Widget> pages = [
    const TerceiraPage(),
    const QuartaPage(),
    const QuintaPage(),
    const SextaPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color(0xFF1A422B),
        title: const Text(
          'Control\$',
          style: TextStyle(fontSize: 24),
        ),
        automaticallyImplyLeading: false,
      ),
      backgroundColor: Color(0xFF1E5234),
      body: pages[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex,
        showUnselectedLabels: true,
        unselectedItemColor: Colors.grey,
        selectedItemColor: Color(0xFF1E5234),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_circle),
            label: 'NOVA',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_month),
            label: 'DÍVIDAS',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grading_sharp),
            label: 'ESTATÍSTICAS',
          ),
        ],
      ),
    );
  }
}