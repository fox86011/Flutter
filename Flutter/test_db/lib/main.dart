import 'package:flutter/material.dart';
import 'databaseHelper.dart';
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  final dbHelper = DatabaseHelper.instance;
  try {
    await dbHelper.database; // Inicializar la base de datos
  } catch (e) {
    print('Error en main: $e');
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("SQLite CRUD Test")),
        body: FutureBuilder(
          future: _testDatabaseAndQuery(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return const Center(child: CircularProgressIndicator());
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            } else {
              final data = snapshot.data as List<Map<String, dynamic>>;
              return ListView.builder(
                padding: const EdgeInsets.all(8.0),
                itemCount: data.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text('Nombre: ${data[index]['nombre']}'),
                    subtitle: Text('Correo: ${data[index]['correo']}'),
                    trailing: Text('ID: ${data[index]['id']}'),
                  );
                },
              );
            }
          },
        ),
      ),
    );
  }

  static Future<List<Map<String, dynamic>>> _testDatabaseAndQuery() async {
    final dbHelper = DatabaseHelper.instance;

    try {
      // Insertar registros con los nombres proporcionados
      int idCarlos = await dbHelper.insert("Carlos", "carlos@example.com");
      print('Insertado ID (Carlos): $idCarlos');

      int idMaria = await dbHelper.insert("Maria", "maria@example.com");
      print('Insertado ID (Maria): $idMaria');

      int idPedro = await dbHelper.insert("Pedro", "pedro@example.com");
      print('Insertado ID (Pedro): $idPedro');

      int idAna = await dbHelper.insert("Ana", "ana@example.com");
      print('Insertado ID (Ana): $idAna');

      // Actualizar el registro de Ana
      if (idAna != 0) {
        int updated = await dbHelper.update(idAna, "Ana Updated", "ana.updated@example.com");
        print('Actualizado (Ana): $updated filas');
      }

      // Eliminar el registro de Carlos
      if (idCarlos != 0) {
        int deleted = await dbHelper.delete(idCarlos);
        print('Eliminado (Carlos): $deleted filas');
      }

      // Consultar todos los registros
      return await dbHelper.queryAll();
    } catch (e) {
      print('Error en _testDatabaseAndQuery: $e');
      rethrow;
    }
  }
}