//* Email Page
import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({super.key});
  @override
  State<Email> createState() => _EmailState();
}

class _EmailState extends State<Email>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 231, 197, 105),
    appBar: AppBar(
      title: const Text(
        'EMAIL US',
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