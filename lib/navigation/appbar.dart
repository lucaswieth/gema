import 'package:flutter/material.dart';

class GemaAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String titleAppBar;

  GemaAppBar({
    required this.titleAppBar,
  });

  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).primaryColor,
      title: Text(
        titleAppBar,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
