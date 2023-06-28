import 'package:flutter/material.dart';
import 'package:prueba_dos/pages_view/Homepage.dart';
import 'package:prueba_dos/pantalla_inicio.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MaterialApp',
      home: Pantalla_Inicio(),
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
      ),
      routes: {
        "/" : (context) => HomePage()
      },
    );
  }
}