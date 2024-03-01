import 'package:flutter/material.dart';

class GemaTextFormField extends StatelessWidget {
  final String labelText;
  final TextEditingController? controller;
  final String? initialValue;
  final double? width;
  final double? height;
  final void Function(String)? onChanged;

  const GemaTextFormField({
    super.key,
    required this.labelText,
    this.initialValue,
    this.width,
    this.height,
    this.controller,
    this.onChanged,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: SizedBox(
        width: width,
        height: height,
        child: TextFormField(
          onChanged: onChanged,
          decoration: InputDecoration(
            labelText: labelText,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.all(8),
          ),
          controller: controller,
          initialValue: initialValue,
        ),
      ),
    );
  }
}

class GemaNumberFormField extends StatelessWidget {
  final TextEditingController? controller;
  const GemaNumberFormField({super.key, this.controller});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: SizedBox(
        width: 40,
        height: 24,
        child: TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            contentPadding: const EdgeInsets.all(8),
          ),
          controller: controller,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
