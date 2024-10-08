import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'pages/Home_nav.dart';
import 'pages/Status_nav.dart';
import 'pages/Suply_nav.dart';
import 'pages/Tripulation_nav.dart';

void main() {
  runApp(const MaterialApp(
    debugShowCheckedModeBanner: false,
    home: ControllerPage(),
  ));
}

class ControllerPage extends StatefulWidget {
  const ControllerPage({super.key});

  @override
  State<ControllerPage> createState() => _ControllerPageState();
}

class _ControllerPageState extends State<ControllerPage> {
  int _actualPage = 0;
  
  String? shipName;
  int? valueSuply;
  List<String> tripulants = [];

  void _addTripulant(String name) {
    setState(() {
      tripulants.add(name);
    });
  }

  void _saveShipName(String name) {
    setState(() {
      shipName = name;
    });
  }

  void _saveSuply(int value) {
    setState(() {
      valueSuply = value;
    });
  }


  void _updateIndex(int index) {
    setState(() {
      _actualPage = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Missão Espacial - Tupac11"),
        centerTitle: true,
      ),
      body: IndexedStack(
        index: _actualPage,
        children: [
          HomeNav(onSave: _saveShipName),
          const TripulationNav(),
          const SuplyNav(),
          const StatusNav(),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _actualPage,
          onTap: _updateIndex,
          fixedColor: Colors.blue,
          backgroundColor: Colors.black,
          unselectedItemColor: Colors.green,
          showUnselectedLabels: true,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.rocket_launch),
              label: "Home",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people_outline_outlined),
              label: "Tripulação",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.add_box_rounded),
              label: "Suprimentos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.assessment),
              label: "Status",
            ),
          ]),
    );
  }
}
