import 'package:flutter/material.dart';
import 'package:calculadora/pages/calculator_page.dart'; // Importa tu nueva página

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Calculadora',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const CalculatorPage(), // Establece CalculatorPage como la página de inicio
    );
  }
}