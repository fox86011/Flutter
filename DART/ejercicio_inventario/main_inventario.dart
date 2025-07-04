import 'models/producto.dart';
import 'models/tienda.dart';

void main() {
  print("--- EJERCICIO B: INVENTARIO DE PRODUCTOS EN UNA TIENDA ---");

  // 1. Crear dos productos distintos.
  final producto1 = Producto(codigo: "PROD001", precio: 50.00);
  final producto2 = Producto(codigo: "PROD002", precio: 25.50);

  // 2. Usar registrarVenta para cada uno, con descripciones y observaciones distintas.
  producto1.registrarVenta(
    nuevaDescripcion: "Laptop de última generación",
    nuevoPrecio: 1200.00,
    nuevaObservacion: "Garantía extendida por 2 años.",
  );

  producto2.registrarVenta(
    nuevaDescripcion: "Mouse inalámbrico ergonómico",
    nuevoPrecio: 35.75,
    nuevaObservacion: {"tipo": "accesorios", "color": "negro"},
  );

  // 3. Cambiar el anuncio de la tienda.
  Tienda.cambiarAnuncio("¡Grandes descuentos en todos los productos!");

  // 4. Mostrar el resumen de ambos productos.
  producto1.resumen();
  producto2.resumen();

  // 5. Mostrar el total de productos vendidos accediendo al método adecuado de la clase Tienda.
  print("\nTotal de productos vendidos por la Tienda: ${Tienda.obtenerVentas()}");
  print("----------------------------------------------------\n");
}