import 'package:flutter/material.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';

class BillsScreen extends StatelessWidget {
  late TextEditingController _gastosSueldo;
  late TextEditingController _gastosElectricidad;
  late TextEditingController _gatosGas;
  late TextEditingController _gastosMaterial;
  late TextEditingController _gastosComida;

  BillsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Gastos Diarios",
          style: TextStyle(color: white),
        ),
      ),
      body: SizedBox(
        height: double.infinity,
        child: Column(
          children: [
            CustomTextFormField(
                controller: _gastosComida,
                label: "Gastos de Comida",
                textInputType: TextInputType.number,
                funcionValidadora: InputValidator.numberValidator)
          ],
        ),
      ),
    );
  }
}
