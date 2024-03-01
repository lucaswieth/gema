import 'package:flutter/material.dart';
import 'package:gema/home/ui/home_screen.dart';
import 'package:gema/tires_pressure/ui/tires_pressure_screen.dart';

void main() {
  runApp(const GemaApp());
}

class GemaApp extends StatelessWidget {
  const GemaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'GEMA App',
      theme: ThemeData(
        primaryColor: const Color.fromARGB(255, 243, 111, 33),
        secondaryHeaderColor: const Color.fromARGB(255, 230, 230, 230),
        cardColor: const Color.fromARGB(255, 230, 230, 230),
        indicatorColor: const Color.fromARGB(255, 96, 96, 96),
        //useMaterial3: true,
      ),
      home: const TiresPressurePage(),
    );
  }
}
