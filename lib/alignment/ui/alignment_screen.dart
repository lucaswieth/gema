import 'package:flutter/material.dart';
import 'package:gema/alignment/ui/alignment_form.dart';
import 'package:gema/navigation/appbar.dart';
import 'package:gema/navigation/drawer.dart';

class AlignmentPage extends StatefulWidget {
  const AlignmentPage({super.key});

  @override
  State<AlignmentPage> createState() => AlignmentPageState();
}

class AlignmentPageState extends State<AlignmentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GemaAppBar(titleAppBar: 'Alinhamento da Suspensão'),
      drawer: const GemaDrawer(),
      body: AlignmentForm(),
    );
  }
}
