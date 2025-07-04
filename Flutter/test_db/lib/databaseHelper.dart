import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';

class DatabaseHelper {
  static final DatabaseHelper instance = DatabaseHelper._init();
  static Database? _database;

  DatabaseHelper._init();

  Future<Database> get database async {
    if (_database != null) return _database!;
    _database = await _initDB('mi_base_de_datos.db');
    return _database!;
  }

  Future<Database> _initDB(String filePath) async {
    try {
      final directory = await getApplicationDocumentsDirectory();
      final path = '${directory.path}/$filePath';
      print('Ruta de la base de datos: $path'); // Depuración
      return await openDatabase(path, version: 1, onCreate: _createDB);
    } catch (e) {
      print('Error al inicializar la base de datos: $e');
      rethrow;
    }
  }

  Future _createDB(Database db, int version) async {
    try {
      await db.execute('''
      CREATE TABLE MiTabla (
        id INTEGER PRIMARY KEY AUTOINCREMENT,
        nombre TEXT NOT NULL,
        correo TEXT NOT NULL
      )
      ''');
    } catch (e) {
      print('Error al crear la tabla: $e');
      rethrow;
    }
  }

  // Insertar un registro
  Future<int> insert(String nombre, String correo) async {
    final db = await database;
    return await db.insert('MiTabla', {'nombre': nombre, 'correo': correo});
  }

  // Actualizar un registro
  Future<int> update(int id, String nuevoNombre, String nuevoCorreo) async {
    final db = await database;
    return await db.update(
      'MiTabla',
      {'nombre': nuevoNombre, 'correo': nuevoCorreo},
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Eliminar un registro
  Future<int> delete(int id) async {
    final db = await database;
    return await db.delete(
      'MiTabla',
      where: 'id = ?',
      whereArgs: [id],
    );
  }

  // Consultar todos los registros
  Future<List<Map<String, dynamic>>> queryAll() async {
    final db = await database;
    return await db.query('MiTabla');
  }
}