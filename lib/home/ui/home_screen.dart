import 'package:flutter/material.dart';
import 'package:gema/navigation/appbar.dart';
import 'package:gema/navigation/drawer.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GemaAppBar(titleAppBar: 'GEMA'),
      drawer: const GemaDrawer(),
    );
  }
}
