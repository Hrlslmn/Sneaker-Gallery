//* Cart Page
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
      body: SingleChildScrollView(
        child:Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(children: [
                Container(
                  margin: const EdgeInsets.all(13),
                  child: Image.asset(
                    'assets/Images/Product-1.jpg',
                    width: 220,
                    ),
                  )                                       
            ],)
          ],) ),
    );

  }
}