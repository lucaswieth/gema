import 'package:flutter/material.dart';
import 'package:gema/alignment/ui/alignment_screen.dart';
import 'package:gema/home/ui/home_screen.dart';
import 'package:gema/tires_pressure/ui/tires_pressure_screen.dart';

class GemaDrawer extends StatelessWidget {
  const GemaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(children: [
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: const Text(
            'Menu',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          ),
        ),
        ListTile(
          leading: const Icon(Icons.home),
          title: const Text('Página Inicial'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.time_to_leave),
          title: const Text('Alinhamento da Suspensão'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AlignmentPage(),
              ),
            );
          },
        ),
        const Divider(),
        ListTile(
          leading: const Icon(Icons.tire_repair),
          title: const Text('Pressão dos Pneus'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => TiresPressurePage(),
              ),
            );
          },
        ),
      ]),
    );
  }
}
