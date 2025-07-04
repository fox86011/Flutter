import 'package:flutter/material.dart';
import 'package:navigation/pages/routes.dart';
// Importar la nueva página de clientes

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: const Text("Página Principal"), // Opcional: añadir un título al AppBar
      ),
      body: Column(
      
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          
          Padding( 
            padding: const EdgeInsets.all(16.0),
            child: MaterialButton(
              onPressed: () {
                //Navigator.push(context, Route);
                Navigator.pushNamed(context, Routes.products);
              },
              color: Colors.blueAccent,
              child: const Text("Página Productos"), // Cambiado a const Text
            ),
          ),
          const SizedBox(height: 20), 

          Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: MaterialButton(
              onPressed: () {
//Navigator.push(context, Route);
                Navigator.pushNamed(context, Routes.customers);
              },
              color: Colors.greenAccent, 
              child: const Text("IR A CLIENTES"), 
            ),
          ),
          const SizedBox(height: 20), 


           Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: MaterialButton(
              onPressed: () {
//Navigator.push(context, Route);
                Navigator.pushNamed(context, Routes.listview);
              },
              color: Colors.greenAccent, 
              child: const Text("IR A LISTAS"), 
            ),
          ),
          const SizedBox(height: 20), 

          Padding( 
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: MaterialButton(
              onPressed: () {
//Navigator.push(context, Route);
                Navigator.pushNamed(context, Routes.productsList);
              },
              color: Colors.greenAccent, 
              child: const Text("IR A LISTA de Productos"), 
            ),
          ),
        ],
      ),
    );
  }
}