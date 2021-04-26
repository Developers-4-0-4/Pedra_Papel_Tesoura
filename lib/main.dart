import 'package:flutter/material.dart';
import './jogar.dart';
import './home.dart';
import 'fim.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
          '/':(context) => home(),
        '/jogar':(context) => jogar(),
        '/fim':(context) => fim(),
      },
    );
  }
}