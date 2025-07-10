//import 'dart:io';
import 'dart:async';


Future<double> descargarArchivo(String nombreArchivo, int tamanoMB) async {
  print('1. Iniciando descarga de "$nombreArchivo" (${tamanoMB}MB)...');
  double progreso = 0.0;
  for (int i = 0; i <= 10; i++) {
    await Future.delayed(Duration(milliseconds: 500)); 
    progreso = i * 10.0;
    print('   Descargando... ${progreso.toInt()}% completado.');
  }
  print('4. Descarga de "$nombreArchivo" completa.');
  return tamanoMB.toDouble();
}
Future<int> comprimirArchivos(List<String> archivosAComprimir) async {
  print('2. Iniciando compresión de ${archivosAComprimir.length} archivos...');
  int archivosComprimidos = 0;
  for (String archivo in archivosAComprimir) {
    await Future.delayed(Duration(seconds: 1)); 
    print('   Comprimiendo: $archivo');
    archivosComprimidos++;
  }
  print('3. Compresión de archivos completada.');
  return archivosComprimidos;
}

void main() async {
  print('--- Gestión de Archivos Asíncrona ---');

  Future<double> descargaFuture = descargarArchivo('documento_importante.pdf', 20);
  List<String> misFotos = ['foto1.jpg', 'foto2.jpg', 'foto3.png'];
  Future<int> compresionFuture = comprimirArchivos(misFotos);
  int totalComprimidos = await compresionFuture;
  double tamanoDescargado = await descargaFuture;

  print('\n--- Resumen de Tareas ---');
  print('Se descargaron $tamanoDescargado MB.');
  print('Se comprimieron $totalComprimidos archivos.');
  print('5. Tareas de gestión de archivos finalizadas.');
}