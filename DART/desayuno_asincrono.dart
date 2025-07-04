import 'dart:io'; 
import 'dart:async'; 

Future<String> prepararCafe() async {
  print('1. Iniciando la preparación del café... (esto tomará 3 segundos)');
  await Future.delayed(Duration(seconds: 3));
  print('4. ¡Café listo!');
  return 'Café caliente';
}
String prepararTostadas() {
  print('2. Estoy tostando el pan... (es rápido)');
  sleep(Duration(seconds: 1)); 
  print('3. ¡Tostadas listas!');
  return 'Tostadas crujientes';
}

void main() async {
  print('--- Mi Rutina Matutina Asíncrona ---');
  Future<String> cafeFuture = prepararCafe();

  String tostadas = prepararTostadas();
  String cafe = await cafeFuture;

  print('\n--- Resultados Finales ---');
  print('¡Desayuno servido: $cafe y $tostadas!');
  print('5. Ya estoy listo para empezar el día.');
}