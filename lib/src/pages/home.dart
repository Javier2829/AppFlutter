import 'package:flutter/material.dart';

// ignore: camel_case_types
class homeScreen extends StatelessWidget {
  const homeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(221, 181, 218, 204),
      appBar: AppBar(
        title: const Text('Home Screen'),
        centerTitle: true,
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          children: [
            const Text('Hola home screen'),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                GestureDetector(
                  onTap: () => _salida(context),
                  child: Container(
                    alignment: Alignment.center,
                    color: Colors.green[200],
                    padding: const EdgeInsets.all(15),
                    child: const Text(
                      'Salida',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                GestureDetector(
                  onTap: () {
                    _regreso(context);
                  },
                  child: Container(
                    padding: const EdgeInsets.all(15),
                    alignment: Alignment.center,
                    color: Colors.redAccent[100],
                    child: const Text(
                      'Regreso',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

void _regreso(BuildContext context) {
  Navigator.pushNamed(context, 'regreso');
  print('regreso');
}

void _salida(BuildContext context) {
  Navigator.pushNamed(context, 'salida');
  print('salida');
}
