import 'tienda.dart'; // Ajusta la importación según tu estructura de carpetas

class Producto {
  final String codigo;
  String? descripcion;
  double precio;
  dynamic observacion;

  Producto({
    required this.codigo,
    required this.precio,
    this.descripcion,
    this.observacion,
  });

  void registrarVenta({
    required String nuevaDescripcion,
    required double nuevoPrecio,
    dynamic nuevaObservacion,
  }) {
    descripcion = nuevaDescripcion;
    precio = nuevoPrecio;
    observacion = nuevaObservacion;
    Tienda.aumentarVentas();
    print("Producto $codigo vendido.");
  }

  void resumen() {
    print("\n--- Resumen del Producto ---");
    print("Código: $codigo");
    print("Descripción: ${descripcion ?? 'N/A'}");
    print("Precio: \$${precio.toStringAsFixed(2)}");
    print("Observación: ${observacion ?? 'Ninguna'}");
    print("--- Información de la Tienda ---");
    print("Nombre de la Tienda: ${Tienda.nombre}");
    print("Anuncio Actual: ${Tienda.getAnuncio}");
    print("----------------------------");
  }
}