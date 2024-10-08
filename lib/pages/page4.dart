import 'package:flutter/material.dart';

class Page4 extends StatefulWidget {
  const Page4({super.key});

  @override
  _Page4State createState() => _Page4State();
}

class _Page4State extends State<Page4> {
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Missão espacial - A jornada'),
      ),
      body: Center(child: Text('Pagina 2')),
    );
  }
}
