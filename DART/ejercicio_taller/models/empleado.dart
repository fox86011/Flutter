import 'taller.dart';

class Empleado {
  final String nombre;

  Empleado({required this.nombre});

  void actualizarMensajeDelTaller(String nuevoMensaje) {
    Taller().cambiarMensaje(nuevoMensaje);
    print("$nombre ha actualizado el mensaje del taller a: \"$nuevoMensaje\"");
  }
}