class Pelicula {
  String titulo;
  int anioEstreno;

  Pelicula({required this.titulo, required this.anioEstreno});

  @override
  String toString() {
    return '$titulo ($anioEstreno)';
  }
}