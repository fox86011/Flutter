import 'package:flutter/material.dart';
import 'package:lista_clientes/routes/routes.dart'; // Importa tus rutas

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Lista de Clientes App'),
        backgroundColor: Colors.deepPurple,
      ),
      body: Center( // Usamos Center para centrar el botón en la pantalla
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Centra verticalmente
          crossAxisAlignment: CrossAxisAlignment.stretch, // Estira el botón horizontalmente
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0), // Añade padding horizontal
              child: ElevatedButton(
                onPressed: () {
                  // Navegación por nombres al hacer clic
                  Navigator.pushNamed(context, Routes.listarClientes);
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.deepPurpleAccent,
                  padding: const EdgeInsets.symmetric(vertical: 15.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Listar Clientes',
                  style: TextStyle(fontSize: 18, color: Colors.white),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}