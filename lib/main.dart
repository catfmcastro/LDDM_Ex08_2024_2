import 'package:ex8/pages/page1.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Missão espacial - A jornada',
    initialRoute: '/',
    routes: <String, Widget Function(BuildContext)>{
      '/': (context) => const Page1(),
    },
  ));
}