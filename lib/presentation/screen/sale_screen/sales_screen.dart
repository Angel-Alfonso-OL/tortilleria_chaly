import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/presentation/provider/last_summary_provider.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';

part 'row_bottons.dart';

class SalesScreen extends ConsumerWidget {
  late TextEditingController _controllerTortillasHechas;
  late TextEditingController _controllerTortillasSobrantes;
  late TextEditingController _controllerTortillasVenidasEspeciales;
  late TextEditingController _controllerTortillasVenidasTiendas;
  late Summary lastSummary;

  Future<void> updateSummary(WidgetRef ref) async {
    await ref.read(lastSummaryProvider.notifier).discoverLastSummary();

    _controllerTortillasHechas = TextEditingController(
        text: ref.read(lastSummaryProvider).tortillasHechas.toString());
    _controllerTortillasSobrantes = TextEditingController(
        text: ref.read(lastSummaryProvider).tortillasSobrantes.toString());
    _controllerTortillasVenidasEspeciales = TextEditingController(
        text: ref.read(lastSummaryProvider).tortillasVendidasEspeciales.toString());
    _controllerTortillasVenidasTiendas = TextEditingController(
        text: ref.read(lastSummaryProvider).tortillasVendidasTienda.toString());
  }

  @override
  Widget build(BuildContext context, ref) {
    return FutureBuilder(
      future: updateSummary(ref),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const SizedBox(
            height: double.infinity,
            width: double.infinity,
            child: Center(child: CircularProgressIndicator()),
          );
        }
        return Scaffold(
          body: Container(
            height: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(height: 15),
                  const Text(
                    "Cantidad de Tortillas",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: darkBlue,
                    ),
                  ),
                  const Divider(color: darkBlue),
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref
                            .read(lastSummaryProvider.notifier)
                            .insertNewSummary(
                                ref.read(lastSummaryProvider).copyWith(
                                      tortillasHechas: int.parse(p0),
                                    ));
                      }
                    },
                    controller: _controllerTortillasHechas,
                    label: "Tortillas Hechas",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                  ),
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref
                            .read(lastSummaryProvider.notifier)
                            .insertNewSummary(
                                ref.read(lastSummaryProvider).copyWith(
                                      tortillasSobrantes: int.parse(p0),
                                    ));
                      }
                    },
                    controller: _controllerTortillasSobrantes,
                    label: "Tortillas Sobrantes",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                  ),
                  const SizedBox(height: 30),
                  const Text(
                    "Tortillas Vendidas",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: darkBlue,
                    ),
                  ),
                  const Divider(color: darkBlue),
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref
                            .read(lastSummaryProvider.notifier)
                            .insertNewSummary(
                                ref.read(lastSummaryProvider).copyWith(
                                      tortillasVendidasEspeciales:
                                          int.parse(p0),
                                    ));
                      }
                    },
                    controller: _controllerTortillasVenidasEspeciales,
                    label: "Especiales",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                  ),
                  const SizedBox(height: 15),
                  CustomTextFormField(
                    onChanage: (p0) async {
                      if (InputValidator.numberValidator(p0) == null) {
                        await ref
                            .read(lastSummaryProvider.notifier)
                            .insertNewSummary(
                                ref.read(lastSummaryProvider).copyWith(
                                      tortillasVendidasTienda: int.parse(p0),
                                    ));
                      }
                    },
                    controller: _controllerTortillasVenidasTiendas,
                    label: "En Tiendas",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                  ),
                  const SizedBox(height: 30),
                  _RowBottons(),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
