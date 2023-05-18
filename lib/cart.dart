//* Cart Page
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Cart extends StatefulWidget {
  const Cart({super.key});
  @override
  State<Cart> createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 231, 197, 105),
      //*Appbar widget
      appBar: AppBar(
        title: const Text(
          'CART',
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