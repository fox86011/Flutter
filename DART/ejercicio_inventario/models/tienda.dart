class Tienda {
  static final String nombre = "La Tienda de Don Pepe";
  static String _anuncio = "¡Ofertas de verano!";
  static int _productosVendidos = 0;

  static void cambiarAnuncio(String nuevoAnuncio) {
    _anuncio = nuevoAnuncio;
    print("El anuncio de la tienda ha cambiado a: \"$_anuncio\"");
  }

  static void aumentarVentas() {
    _productosVendidos++;
  }

  static int obtenerVentas() {
    return _productosVendidos;
  }

  static String get getAnuncio => _anuncio;
  static int get getProductosVendidos => _productosVendidos;

  static String resumenTienda() {
    return "Tienda: $nombre\nAnuncio: $_anuncio\nProductos vendidos: $_productosVendidos";
  }
}