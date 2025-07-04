class Product {
  int? id; // `int?` porque puede ser null antes de insertarse en la DB (AUTOINCREMENT)
  String name;
  double price;
  String description;

  Product({this.id, required this.name, required this.price, required this.description});

  // Convertir un Product a un Map para la base de datos
  Map<String, dynamic> toMap() {
    return {
      'id': id, // El id puede ser null para un nuevo registro (AUTOINCREMENT)
      'name': name,
      'price': price,
      'description': description,
    };
  }

  // Crear un Product desde un Map (de la base de datos)
  factory Product.fromMap(Map<String, dynamic> map) {
    return Product(
      id: map['id'],
      name: map['name'],
      price: map['price'],
      description: map['description'],
    );
  }

  @override
  String toString() {
    return 'Product(id: $id, name: $name, price: $price, description: $description)';
  }
}