import 'package:flutter/material.dart';

class Page3 extends StatefulWidget {
  const Page3({super.key});

  @override
  _Page3State createState() => _Page3State();
}

class _Page3State extends State<Page3> {
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Missão espacial - A jornada'),
      ),
      body: Center(child: Text('Pagina 3')),
    );
  }
}
