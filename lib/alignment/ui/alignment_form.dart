import 'package:flutter/material.dart';

class AlignmentForm extends StatefulWidget {
  const AlignmentForm({super.key});

  @override
  State<AlignmentForm> createState() => AlignmentFormState();
}

class AlignmentFormState extends State<AlignmentForm> {
  final List<Widget> alignmentVariationCards = [
    AlignmentVariationCard(),
  ];

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView.builder(
        itemCount: alignmentVariationCards.length,
        itemBuilder: (context, index) {
          return alignmentVariationCards[index];
        },
      ),
    );
  }
}

class AlignmentVariationCard extends StatelessWidget {
  const AlignmentVariationCard({super.key});

  @override
  Widget build(BuildContext context) {
    return FrontAlignmentTable();
  }
}

class FrontAlignmentTable extends StatelessWidget {
  const FrontAlignmentTable({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Column(
          children: [
            SizedBox(
                width: 50.0), // Espaço vazio para a célula superior esquerda
            Text('Coluna 1'),
            Text('Coluna 2'),
            Text('Coluna 3'),
          ],
        ),
        Column(
          children: [
            Text('Linha 1'),
            Text('Dado 1'),
            Text('Dado 2'),
            Text('Dado 3'),
          ],
        ),
        Column(
          children: [
            Text('Linha 2'),
            Text('Dado 4'),
            Text('Dado 5'),
            Text('Dado 6'),
          ],
        ),
        Column(
          children: [
            Text('Linha 3'),
            Text('Dado 7'),
            Text('Dado 8'),
            Text('Dado 9'),
          ],
        ),
      ],
    );
  }
}
