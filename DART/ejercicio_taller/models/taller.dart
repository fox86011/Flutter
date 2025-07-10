class Taller {
  final String nombre = "Mi Taller Express";
  String _mensajeGeneral = "Bienvenido a Mi Taller Express";
  int _totalReparaciones = 0;

  Taller._internal();
  static final Taller _instance = Taller._internal();
  factory Taller() {
    return _instance;
  }

  void cambiarMensaje(String nuevoMensaje) {
    _mensajeGeneral = nuevoMensaje;
  }

  void incrementarContador() {
    _totalReparaciones++;
  }

  int obtenerReparaciones() {
    return _totalReparaciones;
  }

  String get mensajeGeneral => _mensajeGeneral;

  String resumenTaller() {
    return "Taller: $nombre\nMensaje: $_mensajeGeneral\nTotal de reparaciones: $_totalReparaciones";
  }
}