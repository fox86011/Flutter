class  Calculadora {
  int sumar(int valor1, int valor2){
    return valor1 + valor2;
  }

}

void main() {
  final calc=Calculadora();
  final resultado=calc.sumar(10, 8);
  print("La suma es $resultado");
}