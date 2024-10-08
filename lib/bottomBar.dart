import 'package:flutter/material.dart';

class BottomBar extends StatefulWidget{
  const BottomBar({super.key});

  @override
  _BottomBarState createState() => _BottomBarState();
}

class _BottomBarState extends State<BottomBar> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      unselectedItemColor: Colors.grey,
      selectedItemColor: Colors.yellow,
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.rocket_launch),
          label: 'Página 1',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.people),
          label: 'Página 2',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.archive),
          label: 'Página 3',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Página 4',
        ),
      ],

    );
  }
}