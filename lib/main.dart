import 'package:flutter/material.dart';
import 'package:gema/components/drawer.dart';
import 'package:gema/themes/colors.dart';

void main() {
  runApp(const GemaApp());
}

class GemaApp extends StatelessWidget {
  const GemaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: GemaColors.white,
        colorScheme: ColorScheme.fromSeed(seedColor: GemaColors.orange),
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: GemaColors.orange,
        // Here we take the value from the MyHomePage object that was created by
        // the App.build method, and use it to set our appbar title.
        title: const Text(
          'GEMA',
          style: TextStyle(color: Colors.white),
        ),
      ),
      drawer: const GemaDrawer(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        backgroundColor: GemaColors.orange,
        tooltip: 'Criar novo manual',
        child: const Icon(
          Icons.add,
          color: GemaColors.white,
        ),
      )
    );
  }
}
