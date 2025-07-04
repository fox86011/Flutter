import 'package:flutter/material.dart';
import 'package:lista_clientes/pages/home_page.dart';
import 'package:lista_clientes/pages/listview_clientes_page.dart';

class Routes {
  static const String home = '/';
  static const String listarClientes = '/listarClientes';

  static Map<String, WidgetBuilder> getRoutes() {
    return {
      home: (context) => const HomePage(),
      listarClientes: (context) => const ListViewClientesPage(),
    };
  }
}