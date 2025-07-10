class Rectangulo {
  int base = 0;
  int altura = 0;

  Rectangulo(this.base ,this.altura) {
    
  }

  int calcularArea() {
    return base * altura;
  }

  int calcularPerimetro() {
    return 2 * base + 2 * altura;
  }
}

void main() {
  final rectangulo = Rectangulo(5, 10);
  final rectangulo2 = Rectangulo(10, 20);

  int area1 = rectangulo.calcularArea();
  int area2 = rectangulo2.calcularArea();
  print("area1: $area1");
  print("area2: $area2");
}