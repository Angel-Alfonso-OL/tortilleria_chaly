import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String label;
  final TextInputType textInputType;
  final String? Function(String?) funcionValidadora;
  final TextEditingController controller;

  const CustomTextFormField({
    super.key,
    required this.controller,
    required this.label,
    required this.textInputType,
    required this.funcionValidadora,
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      textCapitalization: TextCapitalization.words,
      validator: funcionValidadora,
      keyboardType: textInputType,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        labelText: label,
      ),
    );
  }
}
