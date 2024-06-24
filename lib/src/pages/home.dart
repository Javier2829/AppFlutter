import 'package:flutter/material.dart';
// ignore: depend_on_referenced_packages
import 'package:shared_preferences/shared_preferences.dart';

class homeScreen extends StatefulWidget {
  const homeScreen({super.key});

  @override
  State<homeScreen> createState() => _homeScreenState();
}

class _homeScreenState extends State<homeScreen> {
  var user = '';

  @override
  void initState() {
    super.initState();
    _cargar_preferense;
  }

  // ignore: non_constant_identifier_names
  _cargar_preferense() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      user = prefs.getString('user')!;
      print(user);
    });
  }

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
            Text('Hola $user'),
            const Text('Bienvenido al home screen'),
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
                //campo para mostrar los datos
              ],
            ),
          ],
        ),
      ),
    );
  }
}

void _regreso(BuildContext context) {
  Navigator.pushNamed(context, 'regreso');
//  print('regreso');
}

void _salida(BuildContext context) {
  Navigator.pushNamed(context, 'salida');
  //print('salida');
}
