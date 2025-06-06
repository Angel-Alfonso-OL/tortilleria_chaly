import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/presentation/provider/summary_db_provider.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';

part 'row_bottons.dart';

class SalesScreen extends ConsumerWidget {
  late TextEditingController _controllerTortillasHechas;
  late TextEditingController _controllerTortillasSobrantes;
  late TextEditingController _controllerTortillasVenidasEspeciales;
  late TextEditingController _controllerTortillasVenidasTiendas;
  late Summary lastSummary;

  SalesScreen({super.key});

  Future<void> updateSummary(WidgetRef ref) async {
    final a = await ref.read(summaryDbProvider).getAllSummary();
    //Si la lista no esta vacia
    if (a.isNotEmpty) {
      // Si la ultima fecha es diferente a la actual
      if (a[a.length - 1].date.day != DateTime.now().day) {
        await ref.read(summaryDbProvider).createSummary(
              Summary(
                tortillasHechas: 0,
                tortillasSobrantes: 0,
                tortillasVendidas: 0,
                tortillasVendidasEspeciales: 0,
                tortillasVendidasTienda: 0,
                totalFiados: 0,
                totalPagados: 0,
                date: DateTime.now(),
              ),
            );
      }
      //Si la lista esta vacia
    } else {
      await ref.read(summaryDbProvider).createSummary(
            Summary(
              tortillasHechas: 0,
              tortillasSobrantes: 0,
              tortillasVendidas: 0,
              tortillasVendidasEspeciales: 0,
              tortillasVendidasTienda: 0,
              totalFiados: 0,
              totalPagados: 0,
              date: DateTime.now(),
            ),
          );
    }
    final listSummary = await ref.read(summaryDbProvider).getAllSummary();
    lastSummary = listSummary.last;
    _controllerTortillasHechas =
        TextEditingController(text: lastSummary.tortillasHechas.toString());
    _controllerTortillasSobrantes =
        TextEditingController(text: lastSummary.tortillasSobrantes.toString());
    _controllerTortillasVenidasEspeciales = TextEditingController(
        text: lastSummary.tortillasVendidasEspeciales.toString());
    _controllerTortillasVenidasTiendas = TextEditingController(
        text: lastSummary.tortillasVendidasTienda.toString());
  }

  @override
  Widget build(BuildContext context, ref) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: FutureBuilder(
        future: updateSummary(ref),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const SizedBox(
              height: double.infinity,
              width: double.infinity,
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            appBar: AppBar(
              actions: const [
                Icon(
                  Icons.refresh,
                  color: white,
                ),
                SizedBox(width: 20),
              ],
            ),
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
                      onChanage: (p0) {
                        if (InputValidator.numberValidator(p0) == null) {
                          ref.read(summaryDbProvider).updateSummary(
                                lastSummary.copyWith(
                                  tortillasHechas: int.parse(p0),
                                ),
                              );
                        }
                      },
                      controller: _controllerTortillasHechas,
                      label: "Tortillas Hechas",
                      textInputType: TextInputType.number,
                      funcionValidadora: InputValidator.numberValidator,
                    ),
                    const SizedBox(height: 15),
                    CustomTextFormField(
                      onChanage: (p0) {
                        if (InputValidator.numberValidator(p0) == null) {
                          ref.read(summaryDbProvider).updateSummary(
                                lastSummary.copyWith(
                                  tortillasSobrantes: int.parse(p0),
                                ),
                              );
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
                      onChanage: (p0) {
                        if (InputValidator.numberValidator(p0) == null) {
                          ref.read(summaryDbProvider).updateSummary(
                                lastSummary.copyWith(
                                  tortillasVendidasEspeciales: int.parse(p0),
                                ),
                              );
                        }
                      },
                      controller: _controllerTortillasVenidasEspeciales,
                      label: "Especiales",
                      textInputType: TextInputType.number,
                      funcionValidadora: InputValidator.numberValidator,
                    ),
                    const SizedBox(height: 15),
                    CustomTextFormField(
                      onChanage: (p0) {
                        if (InputValidator.numberValidator(p0) == null) {
                          ref.read(summaryDbProvider).updateSummary(
                                lastSummary.copyWith(
                                  tortillasVendidasTienda: int.parse(p0),
                                ),
                              );
                        }
                      },
                      controller: _controllerTortillasVenidasTiendas,
                      label: "En Tiendas",
                      textInputType: TextInputType.number,
                      funcionValidadora: InputValidator.numberValidator,
                    ),
                    const SizedBox(height: 30),
                    const _RowBottons(),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
