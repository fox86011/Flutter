import 'package:flutter/material.dart';

class CalculatorPage extends StatefulWidget {
  const CalculatorPage({super.key});

  @override
  State<CalculatorPage> createState() => _CalculatorPageState();
}

class _CalculatorPageState extends State<CalculatorPage> {
  int _valor1 = 0;
  int _valor2 = 0;
  int _resultado = 0;

  final TextEditingController _controllerValor1 = TextEditingController(text: '0');
  final TextEditingController _controllerValor2 = TextEditingController(text: '0');

  @override
  void initState() {
    super.initState();
    _controllerValor1.addListener(_updateValor1);
    _controllerValor2.addListener(_updateValor2);
  }

  @override
  void dispose() {
    _controllerValor1.removeListener(_updateValor1);
    _controllerValor2.removeListener(_updateValor2);
    _controllerValor1.dispose();
    _controllerValor2.dispose();
    super.dispose();
  }

  void _updateValor1() {
    setState(() {
      _valor1 = int.tryParse(_controllerValor1.text) ?? 0;
    });
  }

  void _updateValor2() {
    setState(() {
      _valor2 = int.tryParse(_controllerValor2.text) ?? 0;
    });
  }

  void _sumar() {
    setState(() {
      _resultado = _valor1 + _valor2;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Calculadora Simple'),
        centerTitle: true, 
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
 
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[

            TextField(
              controller: _controllerValor1,
              keyboardType: TextInputType.number, 
              textAlign: TextAlign.right, 
              decoration: const InputDecoration(
                labelText: 'Valor 1',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20), 
            TextField(
              controller: _controllerValor2,
              keyboardType: TextInputType.number, 
              textAlign: TextAlign.right, 
              decoration: const InputDecoration(
                labelText: 'Valor 2',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30), 
            ElevatedButton(
              onPressed: _sumar,
              child: const Text('SUMAR'),
            ),
            const SizedBox(height: 30), 
            
            Text(
              'Resultado: $_resultado',
              style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ),
    );
  }
}