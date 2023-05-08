//* Chat Page
import 'package:flutter/material.dart';

class Chat extends StatefulWidget {
  const Chat({super.key});
  @override
  State<Chat> createState() => _ChatState();
}

class _ChatState extends State<Chat>{
  @override
  Widget build(BuildContext context) {
  return Scaffold(
    backgroundColor: const Color.fromARGB(255, 231, 197, 105),
    appBar: AppBar(
      title: const Text(
        'LIVE CHAT',
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