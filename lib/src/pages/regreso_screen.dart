import 'package:flutter/material.dart';

class regreso_screen extends StatefulWidget {
  const regreso_screen({super.key});

  @override
  State<regreso_screen> createState() => _regreso_screenState();
}

class _regreso_screenState extends State<regreso_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('regreso'),
        backgroundColor: Colors.green,
      ),
      body: const Center(
        child: Text('pagina de regreso'),
      ),
    );
  }
}
