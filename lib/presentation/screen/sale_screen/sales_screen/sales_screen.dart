import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/presentation/provider/summary_db_provider.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';

part './row_bottons.dart';

class SalesScreen extends ConsumerWidget {
  final _controllerTortillasHechas = TextEditingController();
  final _controllerTortillasSobrantes = TextEditingController();
  final _controllerTortillasVenidasEspeciales = TextEditingController();
  final _controllerTortillasVenidasTiendas = TextEditingController();
  SalesScreen({super.key});

  Future<void> a(WidgetRef ref) async {
    final a = await ref.read(summaryDbProvider).getAllSummary();
    if (a[a.length - 1].date.day != DateTime.now().day) {
      await ref.read(summaryDbProvider).createSummary(Summary(
            tortillasHechas: 0,
            tortillasSobrantes: 0,
            tortillasVendidas: 0,
            tortillasVendidasEspeciales: 0,
            tortillasVendidasTienda: 0,
            totalFiados: 0,
            totalPagados: 0,
            date: DateTime.now(),
          ));
    }
  }

  @override
  Widget build(BuildContext context, ref) {
    a(ref);
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
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
                controller: _controllerTortillasHechas,
                label: "Tortillas Hechas",
                textInputType: TextInputType.number,
                funcionValidadora: InputValidator.numberValidator,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
                controller: _controllerTortillasSobrantes,
                label: "Tortillas Sobrantes",
                textInputType: TextInputType.number,
                funcionValidadora: InputValidator.numberValidator,
              ),
              const SizedBox(height: 50),
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
                controller: _controllerTortillasVenidasEspeciales,
                label: "Especiales",
                textInputType: TextInputType.number,
                funcionValidadora: InputValidator.numberValidator,
              ),
              const SizedBox(height: 15),
              CustomTextFormField(
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
  }
}
