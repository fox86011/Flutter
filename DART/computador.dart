import 'dispositivo_electronico.dart';
import 'celular.dart';

class Computador extends DispositivoElectronico {
  int capacidadDisco;

  Computador(int capacidadDisco, int codigo, String marca) 
      : this.capacidadDisco = capacidadDisco, 
        super(codigo, marca);

  @override
  void imprimir() {
    print("Código: $codigo, Marca: $marca, Capacidad Disco: $capacidadDisco GB");
  }

  @override
  void registrarInventario() {
    print("Registrando inventario - Código: $codigo, Marca: $marca, Capacidad Disco: $capacidadDisco GB");
  }

  
}
void main() {
    Computador compu = Computador(500, 101, "Dell");
    Celular celu = Celular(202, "Samsung");
    compu.registrarInventario();
    celu.registrarInventario();
  }