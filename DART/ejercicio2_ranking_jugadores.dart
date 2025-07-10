void main() {
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
  print("----------------------------------------------------\n");
}