import 'package:flutter/material.dart';
import 'package:gema/components/form_fields.dart';

class NormalTirePressureField extends StatelessWidget {
  final String label;
  const NormalTirePressureField({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(height: 24),
        Text(label),
        const SizedBox(height: 8),
        const Row(
          children: [
            Text('Dianteiros:'),
            GemaNumberFormField(),
            Text('psi'),
          ],
        ),
        //const SizedBox(height: 8),
        const Row(
          children: [
            Text('Traseiros:'),
            GemaNumberFormField(),
            Text('psi'),
          ],
        ),
      ],
    );
  }
}

class TirePressureField extends StatelessWidget {
  const TirePressureField({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 24),
        Row(
          children: [
            Text('Pressão do pneu frio:'),
            GemaNumberFormField(),
            Text('psi'),
          ],
        ),
      ],
    );
  }
}
