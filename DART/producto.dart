class Producto {
  String? codigo;
  String? nombre;
  String? descripcion;
  bool activo = true;
  double precio = 0.0;
  int? stock;
}

void main() {

  Producto p1;
  p1 = new Producto();
  p1.codigo = "001";
  p1.nombre = "Laptop";
  p1.descripcion = "Laptop de alta gama";
  p1.activo = true;
  p1.precio = 999.99;
  p1.stock = 10;
  print("Producto 1:");
  print("Código: ${p1.codigo}");
  print("Nombre: ${p1.nombre}");
  print("Descripción: ${p1.descripcion}");
  print("Activo: ${p1.activo}");
  print("Precio: ${p1.precio}");
  print("Stock: ${p1.stock}");

  Producto p2;
  p2 = Producto();
  p2.codigo = "002";
  p2.nombre = "Mouse";
  p2.descripcion = "Mouse inalámbrico";
  p2.activo = true;
  p2.precio = 29.99;
  p2.stock = 50;
  print("Producto 2:");
  print("Código: ${p2.codigo}");
  print("Nombre: ${p2.nombre}");
  print("Descripción: ${p2.descripcion}");
  print("Activo: ${p2.activo}");
  print("Precio: ${p2.precio}");
  print("Stock: ${p2.stock}");

  final Producto p3;
  p3 = Producto();
  p3.codigo = "003";
  p3.nombre = "Teclado";
  p3.descripcion = null;
  p3.activo = false;
  p3.precio = 59.99;
  p3.stock = 30;
  print("Producto 3:");
  print("Código: ${p3.codigo}");
  print("Nombre: ${p3.nombre}");
  print("Descripción: ${p3.descripcion}");
  print("Activo: ${p3.activo}");
  print("Precio: ${p3.precio}");
  print("Stock: ${p3.stock}");
}