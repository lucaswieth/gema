import 'package:flutter/material.dart';
import 'package:gema/themes/colors.dart';
import 'package:gema/components/icons.dart';
import 'package:gema/titles.dart';

class GemaDrawer extends StatelessWidget {
  const GemaDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: GemaColors.orange,
            ),
            child: Text(
              'Menu',
              style: TextStyle(
                color: GemaColors.white,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          ListTile(
            leading: GemaIcons.archives,
            title: const Text(GemaTitles.wheelsAlignment),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: GemaIcons.tiresPressure,
            title: const Text(GemaTitles.tiresPressure),
            onTap: () {},
          ),
          const Divider(),
          ListTile(
            leading: GemaIcons.register,
            title: const Text(GemaTitles.register),
            onTap: () {},
          ),
        ],
      ),

  
    );
  }
}