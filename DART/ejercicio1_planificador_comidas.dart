void main() {
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
  print("2. Después de agregar 'Ensalada César': $comidasFavoritas");

  comidasFavoritas.remove("Lasagna"); 
  print("3. Después de eliminar 'Lasagna': $comidasFavoritas");

  print("4. Comida en posición 2 (índice 2): ${comidasFavoritas[2]}");

  List<List<String>> menuSemanal = [
    // Lunes
    ["Café", "Pollo a la plancha", "Sopa de verduras"],
    // Martes
    ["Tostadas", "Arroz con frijoles", "Ensalada de frutas"],
    // Miércoles
    ["Cereal", "Pasta con salsa", "Pescado al horno"],
    // Jueves
    ["Batido", "Estofado de carne", "Sandwich"],
    // Viernes
    ["Huevos revueltos", "Pizza", "Sopa de lentejas"], // Cena del viernes
    // Sábado
    ["Panqueques", "Hamburguesas caseras", "Sushi"],
    // Domingo
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
  print("----------------------------------------------------\n");
}