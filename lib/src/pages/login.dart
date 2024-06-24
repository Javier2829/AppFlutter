// ignore_for_file: file_names, no_leading_underscores_for_local_identifiers

import 'package:appcontrol/src/pages/home.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  _clickme(_usuario) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    if (kDebugMode) {
      setState(() {
        prefs.setString('user', _usuario);
        Navigator.pushReplacementNamed(context, 'home');
      });

      // ignore: use_build_context_synchronously

      print('clickme');
    }
  }

  @override
  Widget build(BuildContext context) {
    TextEditingController _usuario = TextEditingController(text: '');
    TextEditingController _contrasena = TextEditingController(text: '');

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          const Text(
            'Control de acceso',
            style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                decoration: TextDecoration.none),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _usuario,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Usuario',
              ),
              maxLines: 1,
              showCursor: true,
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: _contrasena,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Contraseña',
              ),
              obscureText: true,
              maxLines: 1,
            ),
          ),
          ElevatedButton(
            onPressed: () => _clickme('user'),
            style: ButtonStyle(
              backgroundColor: WidgetStateProperty.all<Color>(Colors.blue),
            ),
            child: const Text('Ingresar'),
          ),
        ],
      ),
    );
  }
}
