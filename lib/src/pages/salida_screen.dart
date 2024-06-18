import 'package:flutter/material.dart';

// ignore: camel_case_types
class salida_screen extends StatefulWidget {
  const salida_screen({super.key});

  @override
  State<salida_screen> createState() => _salida_screenState();
}

// ignore: camel_case_types
class _salida_screenState extends State<salida_screen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Salida"),
      ),
      body: Center(
        child: Card(
          elevation: 10,
          color: Colors.grey,
          shadowColor: Colors.green,
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(20)),
          ),
          margin: const EdgeInsets.all(10),
          child: SizedBox(
            width: 300,
            height: 350,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Salida",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Patente',
                    filled: true,
                    fillColor: Colors.white,
                  ),
                  maxLines: 1,
                  maxLength: 6,
                ),
                const SizedBox(height: 20),
                const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: 'Kilometraje',
                      filled: true,
                      fillColor: Colors.white),
                  maxLength: 6,
                  maxLines: 1,
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _registrarSalida(context),
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                  ),
                  child: const Text('Registar'),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

_registrarSalida(BuildContext context) {
  Navigator.pop(context, true);
}
