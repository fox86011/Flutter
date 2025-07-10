class Libro {
  String ISBN;
  String titulo;
  int? numeroPaginas;
  String? descripcion;

  Libro(this.ISBN, this.titulo, this.numeroPaginas, this.descripcion);
}

void main() {
  Libro libro1 = Libro("978-3-16-148410-0", "El Quijote",  863,  "Clásico de la literatura española");
  Libro libro2 = Libro("978-0-7475-3269-9", "Harry Potter",  320,  null);
  Libro libro3 = Libro("978-1-4028-9462-6", "1984",  null,  "Novela distópica");

  print("Libro 1: ISBN: ${libro1.ISBN}, Título: ${libro1.titulo}, Páginas: ${libro1.numeroPaginas}, Descripción: ${libro1.descripcion}");
  print("Libro 2: ISBN: ${libro2.ISBN}, Título: ${libro2.titulo}, Páginas: ${libro2.numeroPaginas}, Descripción: ${libro2.descripcion}");
  print("Libro 3: ISBN: ${libro3.ISBN}, Título: ${libro3.titulo}, Páginas: ${libro3.numeroPaginas}, Descripción: ${libro3.descripcion}");
}