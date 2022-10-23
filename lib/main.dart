import 'package:flutter/material.dart';
import 'package:flutter_nodejs_crud/pages/product_add_edit.dart';
import 'package:flutter_nodejs_crud/pages/product_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => const ProductsList(),
        '/add-product': (context) => const ProductAddEdit(),
        '/edit-product': (context) => const ProductAddEdit(),
      },
    );
  }
}
