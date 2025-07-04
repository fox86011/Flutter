import 'package:flutter/material.dart';
import 'package:navigation/pages/customers_page.dart';
import 'package:navigation/pages/home_page.dart';
import 'package:navigation/pages/listview_pages.dart';
import 'package:navigation/pages/productlist_page.dart';
import 'package:navigation/pages/products_page.dart';
import 'package:navigation/pages/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const  HomePage(),
      routes: {
        Routes.products: (context){
          return const ProductPage();
        },
        Routes.customers:(ctx){
          return const CustomersPage();
        },
        Routes.listview: (ctx){
          return const ListviewPages();
        },
        Routes.productsList: (ctx){
          return ProductListPage();
        }
      }
    );
  }
}



