import 'dispositivo_electronico.dart';

class Celular extends DispositivoElectronico {
  Celular(int codigo, String marca) : super(codigo, marca);

  @override
  void imprimir() {
    print("Código: $codigo, Marca: $marca");
  }

  @override
  void registrarInventario() {
    print("Registrando inventario - Código: $codigo, Marca: $marca");
  }
}