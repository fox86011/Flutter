import 'package:flutter/material.dart';
import 'package:lista_clientes/routes/routes.dart'; // Importa tus rutas

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista Clientes App',
      theme: ThemeData(
        primarySwatch: Colors.deepPurple, // Un color de tema para esta app
      ),
      initialRoute: Routes.home, // Establece la ruta inicial
      routes: Routes.getRoutes(), // Carga todas las rutas definidas
      debugShowCheckedModeBanner: false, // Opcional: oculta la cinta de "DEBUG"
    );
  }
}