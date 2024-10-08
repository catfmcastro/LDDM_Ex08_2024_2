import 'package:flutter/material.dart';

class StatusNav extends StatefulWidget {
  const StatusNav({super.key});

  @override
  State<StatusNav> createState() => _StatusNavState();
}

class _StatusNavState extends State<StatusNav> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Text("Satus"),
    );
  }
}