//* Product Page
import 'package:flutter/material.dart';

class Products extends StatefulWidget {
  const Products({super.key});
  @override
  State<Products> createState() => _ProductsState();
}
class _ProductsState extends State<Products>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 231, 197, 105),
    appBar: AppBar(
      title: const Text(
        'PRODUCTS',
        style: TextStyle(
          fontWeight: FontWeight.bold,
          color: Colors.white,
          fontFamily: 'Archivo',
        ),
      ),
      centerTitle: true,
      backgroundColor: Colors.orange[800],
      elevation: 1,
    ),
  );
}
}

