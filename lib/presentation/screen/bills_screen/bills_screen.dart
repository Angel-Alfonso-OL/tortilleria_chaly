import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/domain/entities/bills/bills.dart';
import 'package:tortilleria_chaly/presentation/provider/last_bills.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';

class BillsScreen extends ConsumerWidget {
  late TextEditingController _gastosSueldo;
  late TextEditingController _gastosElectricidad;
  late TextEditingController _gastosGas;
  late TextEditingController _gastosMaterial;
  late TextEditingController _gastosComida;

  late Bills lastBill;

  Future<void> updateBills(WidgetRef ref) async {
    await ref.read(lastBillsProvider.notifier).discoverLastBills();

    _gastosSueldo = TextEditingController(
        text: ref.read(lastBillsProvider).salario.toString());
    _gastosElectricidad =
        TextEditingController(text: ref.read(lastBillsProvider).luz.toString());
    _gastosGas =
        TextEditingController(text: ref.read(lastBillsProvider).gas.toString());
    _gastosMaterial = TextEditingController(
        text: ref.read(lastBillsProvider).compras.toString());
    _gastosComida = TextEditingController(
        text: ref.read(lastBillsProvider).comida.toString());
        
  }

  BillsScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return FutureBuilder(
      future: updateBills(ref),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: const Text(
              "Gastos Diarios",
              style: TextStyle(color: white),
            ),
          ),
          body: Container(
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    controller: _gastosComida,
                    label: "Gastos de Comida",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref.read(lastBillsProvider.notifier).insertNewBills(
                              ref.read(lastBillsProvider).copyWith(
                                    comida: int.parse(p0),
                                  ),
                            );
                      }
                    },
                  ),
                   const SizedBox(height: 40),
                  CustomTextFormField(
                    controller: _gastosMaterial,
                    label: "Gastos de Compras",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref.read(lastBillsProvider.notifier).insertNewBills(
                              ref.read(lastBillsProvider).copyWith(
                                    compras: int.parse(p0),
                                  ),
                            );
                      }
                    },
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    controller: _gastosElectricidad,
                    label: "Gastos de Luz",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref.read(lastBillsProvider.notifier).insertNewBills(
                              ref.read(lastBillsProvider).copyWith(
                                   luz: int.parse(p0),
                                  ),
                            );
                      }
                    },
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    controller: _gastosGas,
                    label: "Gastos de Gas",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref.read(lastBillsProvider.notifier).insertNewBills(
                              ref.read(lastBillsProvider).copyWith(
                                    gas: int.parse(p0),
                                  ),
                            );
                      }
                    },
                  ),
                  const SizedBox(height: 40),
                  CustomTextFormField(
                    controller: _gastosSueldo,
                    label: "Gastos de Salarios",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref.read(lastBillsProvider.notifier).insertNewBills(
                              ref.read(lastBillsProvider).copyWith(
                                    salario: int.parse(p0),
                                  ),
                            );
                      }
                    },
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
