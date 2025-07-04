import 'taller.dart';

enum EstadoVehiculo { Pendiente, Reparado }

class Vehiculo {
  final String placa;
  String? diagnostico;
  EstadoVehiculo estado;
  dynamic extraInfo;

  Vehiculo({
    required this.placa,
    this.diagnostico,
    this.estado = EstadoVehiculo.Pendiente,
    this.extraInfo,
  });

  void registrarDiagnostico(String nuevoDiagnostico) {
    diagnostico = nuevoDiagnostico;
    estado = EstadoVehiculo.Reparado;
    Taller().incrementarContador();
    print("Vehículo con placa $placa atendido. Diagnóstico: $diagnostico");
  }

  void resumen() {
    final taller = Taller();
    print("\n--- Resumen del Vehículo ---");
    print("Placa: $placa");
    print("Diagnóstico: ${diagnostico ?? 'No asignado'}");
    print("Estado: ${estado.toString().split('.').last}");
    print("Información Extra: ${extraInfo ?? 'No hay'}");
    print("--- Información del Taller ---");
    print("Nombre del Taller: ${taller.nombre}");
    print("Mensaje de Bienvenida: ${taller.mensajeGeneral}");
    print("----------------------------");
  }
}