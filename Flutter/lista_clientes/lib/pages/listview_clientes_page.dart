import 'package:flutter/material.dart';
import 'package:lista_clientes/models/cliente.dart'; // Importa el modelo Cliente

class ListViewClientesPage extends StatelessWidget {
  const ListViewClientesPage({super.key});

  // Para el listado de clientes crear una lista de 10 clientes.
  List<Cliente> _crearListaClientes() {
    return List.generate(
      10, // Crea 10 clientes
      (index) => Cliente(
        id: index + 1,
        nombre: 'Cliente ${index + 1}',
        apellido: 'Apellido ${index + 1}',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Cliente> clientes = _crearListaClientes();

    return Scaffold(
      appBar: AppBar(
        title: const Text('Listado de Clientes'),
        backgroundColor: Colors.deepPurple,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context); // Para volver a la HomePage
          },
        ),
      ),
      body: ListView.builder(
        itemCount: clientes.length,
        itemBuilder: (context, index) {
          final cliente = clientes[index];
          return Card(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            elevation: 4,
            child: ListTile(
              leading: CircleAvatar(
                child: Text('${cliente.id}'),
              ),
              title: Text('${cliente.nombre} ${cliente.apellido}'),
              subtitle: Text('ID: ${cliente.id}'),
              trailing: const Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Opcional: Podrías navegar a una página de detalles del cliente aquí
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Clic en ${cliente.nombre}')),
                );
              },
            ),
          );
        },
      ),
    );
  }
}