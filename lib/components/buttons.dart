import 'package:flutter/material.dart';

class GemaDropdownButton extends StatelessWidget {
  final String hint;
  final Function(String?)? onChanged;
  final List<String> items;
  final String? validatorMessage;

  const GemaDropdownButton({
    super.key,
    required this.hint,
    this.onChanged,
    required this.items,
    this.validatorMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: 128,
        child: DropdownButtonFormField(
          borderRadius: BorderRadius.circular(8),
          decoration: InputDecoration(
            isDense: true,
            contentPadding: const EdgeInsets.all(8),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          isExpanded: true,
          hint: Text(hint),
          items: items.map(
            (item) {
              return DropdownMenuItem<String>(
                value: item,
                child: Text(item),
              );
            },
          ).toList(),
          validator: (value) {
            return value == null ? validatorMessage : null;
          },
          onChanged: (value) {},
          onSaved: (value) {},
        ),
      ),
    );
  }
}

class GemaRadio extends StatelessWidget {
  final String title;
  final String value;
  final String groupValue;
  final Function(String?) onChanged;

  const GemaRadio({
    super.key,
    required this.value,
    required this.groupValue,
    required this.onChanged,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: Row(
        children: [
          Radio(
            splashRadius: 16,
            value: value,
            groupValue: groupValue,
            onChanged: onChanged,
          ),
          Text(title),
        ],
      ),
    );
  }
}

class GemaIconButton extends StatelessWidget {
  final IconData icon;
  final String tooltip;
  final void Function() onPressed;

  const GemaIconButton({
    super.key,
    required this.icon,
    required this.tooltip,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: onPressed,
      icon: Icon(
        icon,
        color: Theme.of(context).indicatorColor,
      ),
      splashRadius: 24.0,
      tooltip: tooltip,
    );
  }
}

class GemaCheckbox extends StatelessWidget {
  final String title;
  final bool value;
  final Function(bool?) onChanged;

  const GemaCheckbox({
    super.key,
    required this.onChanged,
    required this.title,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          Checkbox(
            shape: const CircleBorder(),
            splashRadius: 16.0,
            value: value,
            onChanged: onChanged,
          ),
          Text(title),
        ],
      ),
    );
  }
}

class GemaCardButtons extends StatelessWidget {
  const GemaCardButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        GemaIconButton(
          icon: Icons.arrow_upward,
          tooltip: 'Mover para cima',
          onPressed: () {},
        ),
        GemaIconButton(
          icon: Icons.arrow_downward,
          tooltip: 'Mover para baixo',
          onPressed: () {},
        ),
        GemaIconButton(
          icon: Icons.add,
          tooltip: 'Duplicar',
          onPressed: () {},
        ),
        GemaIconButton(
          icon: Icons.delete,
          tooltip: 'Remover',
          onPressed: () {},
        ),
      ],
    );
  }
}
