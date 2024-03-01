import 'package:flutter/material.dart';
import 'package:gema/components/buttons.dart';
import 'package:gema/components/form_fields.dart';
import 'package:gema/tires_pressure/components/tires_pressure_widgets.dart';
import 'package:gema/tires_pressure/core/form.dart';

import '../core/tires.dart';

class TiresPressureForm extends StatefulWidget {
  const TiresPressureForm({super.key});

  @override
  State<TiresPressureForm> createState() => _TiresPressureFormState();
}

class _TiresPressureFormState extends State<TiresPressureForm> {
  List tires = [''];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Form(
        child: ListView.builder(
          itemCount: tires.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: TireCard(),
            );
          },
        ),
      ),
    );
  }
}

class TireCard extends StatefulWidget {
  const TireCard({super.key});

  @override
  State<TireCard> createState() => TireCardState();
}

class TireCardState extends State<TireCard> {
  final List<String> widthOptions = generateOptions(20, 130, 5);
  final List<String> aspectRatioOptions = generateOptions(15, 25, 5);
  final List<String> constructionOptions = ['R', 'D'];
  final List<String> rimDiameterOptions = generateOptions(15, 12, 1);

  String selectedTireType = 'normal';

  String normalTireTitle = '';
  String spareTireTitle = 'Pneu Reserva Aro XX"';
  TextEditingController titleCtrl = TextEditingController(text: 'Pneu Aro XX"');

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: Theme.of(context).cardColor,
      ),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Text('Tipo de pneu:'),
                GemaRadio(
                  value: 'normal',
                  groupValue: selectedTireType,
                  onChanged: (value) {
                    setSelectRadio(value);
                  },
                  title: 'Normal',
                ),
                GemaRadio(
                  value: 'spare',
                  groupValue: selectedTireType,
                  onChanged: (value) {
                    setSelectRadio(value);
                  },
                  title: 'Reserva',
                ),
              ],
            ),
            GemaTextFormField(
              labelText: 'Título',
              controller: titleCtrl,
            ),
            Row(
              children: [
                const Text('Especificação:'),
                GemaDropdownButton(
                  hint: 'Largura',
                  items: widthOptions,
                  validatorMessage: 'Selecione a largura',
                ),
                const Text('/'),
                GemaDropdownButton(
                  hint: 'Perfil',
                  items: aspectRatioOptions,
                  validatorMessage: 'Selecione o perfil',
                ),
                GemaDropdownButton(
                  hint: 'Construção',
                  items: constructionOptions,
                  validatorMessage: 'Selecione a construção',
                ),
                GemaDropdownButton(
                  hint: 'Diâmetro',
                  items: rimDiameterOptions,
                  validatorMessage: 'Selecione o diâmetro',
                ),
              ],
            ),
            Visibility(
              visible: selectedTireType == 'normal',
              child: const NormalTireField(),
            ),
            Visibility(
              visible: selectedTireType == 'spare',
              child: const SpareTireField(),
            ),
          ],
        ),
      ),
    );
  }

  void setSelectRadio(value) {
    setState(() {
      selectedTireType = value.toString();

      switch (value) {
        case 'normal':
          spareTireTitle = titleCtrl.text;
          titleCtrl.text = normalTireTitle;
          break;
        case 'spare':
          normalTireTitle = titleCtrl.text;
          titleCtrl.text = spareTireTitle;
          break;
      }
    });
  }
}

class NormalTireField extends StatefulWidget {
  const NormalTireField({super.key});

  @override
  State<NormalTireField> createState() => _NormalTireFieldState();
}

class _NormalTireFieldState extends State<NormalTireField> {
  bool hasStandardPressure = true;
  bool hasLoadlessPressure = false;
  bool hasLoadfulPressure = false;
  bool hasEconomicPressure = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            const Text('Pressão dos pneus:'),
            GemaCheckbox(
              onChanged: (value) {
                setState(() {
                  hasStandardPressure = value!;
                });
              },
              title: 'Padrão',
              value: hasStandardPressure,
            ),
            GemaCheckbox(
              onChanged: (value) {
                setState(() {
                  hasLoadlessPressure = value!;
                });
              },
              title: 'Sem carga',
              value: hasLoadlessPressure,
            ),
            GemaCheckbox(
              onChanged: (value) {
                setState(() {
                  hasLoadfulPressure = value!;
                });
              },
              title: 'Com carga',
              value: hasLoadfulPressure,
            ),
            GemaCheckbox(
              onChanged: (value) {
                setState(() {
                  hasEconomicPressure = value!;
                });
              },
              title: 'Econômica',
              value: hasEconomicPressure,
            ),
          ],
        ),
        Visibility(
          visible: hasStandardPressure,
          child: const NormalTirePressureField(
            label: 'Pressão dos pneus frios:',
          ),
        ),
        Visibility(
          visible: hasLoadlessPressure,
          child: const NormalTirePressureField(
            label: 'Pressão dos pneus frios (sem carga):',
          ),
        ),
        Visibility(
          visible: hasLoadfulPressure,
          child: const NormalTirePressureField(
            label: 'Pressão dos pneus frios (com carga):',
          ),
        ),
        Visibility(
          visible: hasEconomicPressure,
          child: const NormalTirePressureField(
            label: 'Pressão dos pneus frios (economia de combustível):',
          ),
        ),
      ],
    );
  }
}

class SpareTireField extends StatelessWidget {
  const SpareTireField({super.key});

  @override
  Widget build(BuildContext context) {
    return const TirePressureField();
  }
}
