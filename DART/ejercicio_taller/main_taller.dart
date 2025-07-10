import 'models/empleado.dart';
import 'models/vehiculo.dart';
import 'models/taller.dart'; 

void main() {
  print("--- EJERCICIO A: GESTIÓN DE VEHÍCULOS EN UN TALLER ---");

  final empleadoCarlos = Empleado(nombre: "Carlos");

  empleadoCarlos.actualizarMensajeDelTaller("¡Tu coche en las mejores manos!");

 
  final vehiculo1 = Vehiculo(placa: "ABC-123");
  final vehiculo2 = Vehiculo(placa: "XYZ-789");

 
  vehiculo1.registrarDiagnostico("Cambio de aceite y filtros.");
  vehiculo2.registrarDiagnostico("Revisión de frenos y ajuste general.");

  vehiculo1.extraInfo = "Se recomienda revisar neumáticos en la próxima visita.";
  vehiculo2.extraInfo = {"costo_estimado": 150.75, "urgencia": "alta"};

  vehiculo1.resumen();
  vehiculo2.resumen();

  final taller = Taller(); 
  print("\nTotal de vehículos reparados en el Taller: ${taller.obtenerReparaciones()}");
  print("----------------------------------------------------\n");
}