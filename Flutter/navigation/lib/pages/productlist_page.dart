import 'package:flutter/material.dart';
import 'package:navigation/pages/product_pages.dart';

class ProductListPage extends StatelessWidget {
  final List<product> products = [
    product(
      name: "Producto 1",
      proces: 10.0,
      descriptiion: "Descripcion del Producto",
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        ),
      body: ListView.builder(
        itemCount: products.length,
        itemBuilder:(context, index){
          return ListTile(
            title: Text(products[index].name),
            subtitle: Text(products[index].descriptiion),
            trailing: Text("\$${products[index].proces.toStringAsFixed(2)}"),
          );
        }
      ),
    );
  }
}
