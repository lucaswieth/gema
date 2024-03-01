import 'package:flutter/material.dart';
import 'package:gema/navigation/appbar.dart';
import 'package:gema/navigation/drawer.dart';
import 'package:gema/tires_pressure/ui/tires_pressure_form.dart';

class TiresPressurePage extends StatefulWidget {
  const TiresPressurePage({super.key});

  @override
  State<TiresPressurePage> createState() => TiresPressurePageState();
}

class TiresPressurePageState extends State<TiresPressurePage> {
  final List<dynamic> tires = [];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GemaAppBar(titleAppBar: 'Pressão dos Pneus'),
      drawer: const GemaDrawer(),
      body: const TiresPressureForm(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Theme.of(context).primaryColor,
        child: const Icon(Icons.save),
      ),
    );
  }
}
