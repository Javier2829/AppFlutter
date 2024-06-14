// ignore_for_file: file_names

import 'package:appcontrol/login.dart';
import 'package:flutter/material.dart'
    show
        Brightness,
        BuildContext,
        Color,
        ColorScheme,
        MaterialApp,
        StatelessWidget,
        Theme,
        ThemeData,
        Widget;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    const primary = Color(0x0081c3d7);
    const colorText = Color(0xFF001219);
    const background = Color(0xFFe0e1dd);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: primary,
          brightness: Brightness.dark,
        ),
        scaffoldBackgroundColor: background,
        textTheme: Theme.of(context).textTheme.apply(
              fontFamily: 'Poppins',
              bodyColor: colorText,
              displayColor: colorText,
            ),
      ),
      home: const Login(),
    );
  }
}
