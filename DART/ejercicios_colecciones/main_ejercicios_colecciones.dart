import 'models/pelicula.dart'; 

void main() {
  print("--- EJERCICIOS DE COLECCIONES EN DART ---");

  _ejercicio1PlanificadorComidas();
  print('\n' + '=' * 50 + '\n'); 
  _ejercicio2RankingJugadores();
  print('\n' + '=' * 50 + '\n'); 
  _ejercicio3CatalogoPeliculas();
}

void _ejercicio1PlanificadorComidas() {
  print("--- Ejercicio 1: Planificador de Comidas Semanal ---");

  List<String> comidasFavoritas = [
    "Pizza",
    "Lasagna",
    "Sushi",
    "Tacos",
    "Hamburguesa"
  ];
  print("1. Comidas favoritas iniciales: $comidasFavoritas");
  comidasFavoritas.add("Ensalada César");
  print("2. Después de agregar: $comidasFavoritas");
  comidasFavoritas.remove("Lasagna");
  print("3. Después de eliminar 'Lasagna': $comidasFavoritas");
  print("4. Comida en posición 2 (índice 2): ${comidasFavoritas[2]}");
  List<List<String>> menuSemanal = [
    ["Café", "Pollo a la plancha", "Sopa de verduras"],
    ["Tostadas", "Arroz con frijoles", "Ensalada de frutas"],
    ["Cereal", "Pasta con salsa", "Pescado al horno"],
    ["Batido", "Estofado de carne", "Sandwich"],
    ["Huevos revueltos", "Pizza", "Sopa de lentejas"],
    ["Panqueques", "Hamburguesas caseras", "Sushi"],
    ["Avena", "Asado", "Empanadas"],
  ];
  print("\n5. Menú semanal creado.");
  print("6. Almuerzo del martes: ${menuSemanal[1][1]}");
  menuSemanal[4][2] = "Tacos de pescado";
  print("7. Cena del viernes cambiada a: ${menuSemanal[4][2]}");
  print("\n8. Menú Semanal Completo:");
  List<String> diasSemana = ["Lunes", "Martes", "Miércoles", "Jueves", "Viernes", "Sábado", "Domingo"];
  for (int i = 0; i < menuSemanal.length; i++) {
    print("  ${diasSemana[i]}:");
    print("    Desayuno: ${menuSemanal[i][0]}");
    print("    Almuerzo: ${menuSemanal[i][1]}");
    print("    Cena:     ${menuSemanal[i][2]}");
  }
}

void _ejercicio2RankingJugadores() {
  print("--- Ejercicio 2: Ranking de Jugadores ---");
  Map<String, int> puntajes = {};
  print("1. Mapa de puntajes inicializado.");
  puntajes["Alice"] = 1500;
  puntajes["Bob"] = 1200;
  puntajes["Charlie"] = 1800;
  puntajes["David"] = 900;
  print("2. Jugadores agregados: $puntajes");

  print("3. Nombres de los jugadores: ${puntajes.keys.join(', ')}");

  String jugadorBuscado = "Bob";
  print("4. Puntaje de $jugadorBuscado: ${puntajes[jugadorBuscado] ?? 'No encontrado'}");

  String jugadorModificar = "Alice";
  puntajes[jugadorModificar] = 1650;
  print("5. Puntaje de $jugadorModificar modificado: ${puntajes[jugadorModificar]}");

  puntajes["Eve"] = 2000;
  print("6. Nuevo jugador 'Eve' agregado: $puntajes");

  String jugadorEliminar = "David";
  puntajes.remove(jugadorEliminar);
  print("7. Jugador '$jugadorEliminar' eliminado: $puntajes");

  print("8. Contenido completo del mapa actualizado:");
  puntajes.forEach((nombre, puntaje) {
    print("  $nombre: $puntaje");
  });
}

void _ejercicio3CatalogoPeliculas() {
  print("--- Ejercicio 3: Catálogo de Películas por Plataforma ---");

  Map<String, List<Pelicula>> catalogoStreaming = {
    'Netflix': [],
    'HBO': [],
    'Disney+': [],
  };
  print("2. Catálogo de streaming inicializado.");

  catalogoStreaming['Netflix']!.add(Pelicula(titulo: 'Stranger Things', anioEstreno: 2016));
  catalogoStreaming['Netflix']!.add(Pelicula(titulo: 'The Crown', anioEstreno: 2016));
  catalogoStreaming['HBO']!.add(Pelicula(titulo: 'Game of Thrones', anioEstreno: 2011));
  catalogoStreaming['HBO']!.add(Pelicula(titulo: 'Chernobyl', anioEstreno: 2019));
  catalogoStreaming['Disney+']!.add(Pelicula(titulo: 'The Mandalorian', anioEstreno: 2019));
  catalogoStreaming['Disney+']!.add(Pelicula(titulo: 'Frozen II', anioEstreno: 2019));
  print("3. Películas agregadas a cada plataforma.");

  print("\n4. Películas en Netflix:");
  for (var peli in catalogoStreaming['Netflix']!) {
    print("- ${peli.titulo}");
  }

  catalogoStreaming['Disney+']!.add(Pelicula(titulo: 'Elemental', anioEstreno: 2023));
  print("5. 'Elemental' agregada a Disney+.");

  var got = catalogoStreaming['HBO']!.firstWhere((p) => p.titulo == 'Game of Thrones');
  got.anioEstreno = 2011; 
  print("6. Año de estreno de 'Game of Thrones' en HBO cambiado (si aplica).");

  catalogoStreaming['Netflix']!.removeWhere((p) => p.titulo == 'The Crown');
  print("7. 'The Crown' eliminada de Netflix.");

  print("\n8. Catálogo completo de streaming:");
  catalogoStreaming.forEach((plataforma, peliculas) {
    print("Plataforma: $plataforma");
    if (peliculas.isEmpty) {
      print("  (Sin películas)");
    } else {
      for (var peli in peliculas) {
        print("  - $peli"); 
      }
    }
  });
  print("----------------------------------------------------\n");
}