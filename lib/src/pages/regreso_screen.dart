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
        body: Center(
          child: Card(
            color: Colors.white54,
            child: SizedBox(
              height: 400,
              width: 400,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const TextField(
                    decoration: InputDecoration(
                      label: Text('Patente'),
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  const TextField(
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      label: Text('kilometraje'),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.all(
                          Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15),
                  ElevatedButton(
                    onPressed: () => _registrarRegreso(context),
                    style: ElevatedButton.styleFrom(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        backgroundColor: Colors.blueGrey),
                    child: const Text('kilometraje'),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}

_registrarRegreso(context) {
  Navigator.pushReplacementNamed(context, 'home');
}
