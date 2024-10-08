import 'package:flutter/material.dart';

class Page1 extends StatefulWidget {
  const Page1({super.key});

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  Widget build(BuildContext) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Missão espacial - A jornada'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'Nomeie sua Nave',
              style: TextStyle(fontSize: 24),
            ),
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome da nave',
              ),
              maxLength: 50,
            ),
            ElevatedButton(
              onPressed: () {
                // Adicione o código para salvar o nome da nave
              },
              child: Text('Salvar Nome da Nave'),
            ),
          ],
        ),
      ),
    );
  }
}
