import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/presentation/provider/summary_db_provider.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';

part 'row_bottons.dart';

class SalesScreen extends ConsumerStatefulWidget {
  SalesScreen({super.key});

  @override
  _SalesScreenState createState() => _SalesScreenState();
}

class _SalesScreenState extends ConsumerState<SalesScreen> {

  late TextEditingController _controllerTortillasHechas;
  late TextEditingController _controllerTortillasSobrantes;
  late TextEditingController _controllerTortillasVenidasEspeciales;
  late TextEditingController _controllerTortillasVenidasTiendas;
  late Summary summary;

  Future<void> updateSummary(WidgetRef ref) async {
    final a = await ref.read(summaryDbProvider).getAllSummary();
    if (a.isNotEmpty) {
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
    summary = listSummary[listSummary.length - 1];
    _controllerTortillasHechas =
        TextEditingController(text: summary.tortillasHechas.toString());
    _controllerTortillasSobrantes =
        TextEditingController(text: summary.tortillasSobrantes.toString());
    _controllerTortillasVenidasEspeciales = TextEditingController(
        text: summary.tortillasVendidasEspeciales.toString());
    _controllerTortillasVenidasTiendas =
        TextEditingController(text: summary.tortillasVendidasTienda.toString());
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    //updateSummary(ref);
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
