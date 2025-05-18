import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/presentation/provider/client_db_provider.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';

class ViewClientScreen extends ConsumerWidget {
  static const path = "/ViewClientScreen";
  final int idClient;
  final TextEditingController _controller = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  ViewClientScreen({
    super.key,
    required this.idClient,
  });

  @override
  Widget build(BuildContext context, ref) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: FutureBuilder(
        future: ref.watch(clientDbProvider).getClientById(idClient),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          return Scaffold(
            appBar: AppBar(
              backgroundColor: darkBlue,
              foregroundColor: white,
              title: const Text("Información del Cliente"),
              centerTitle: true,
              actions: [
                IconButton(
                  onPressed: () async {
                    await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        actionsAlignment: MainAxisAlignment.spaceAround,
                        title: const SizedBox(
                          width: double.infinity,
                          height: 60,
                          child: Center(
                            child: Text(
                              "¿Quiere eliminar este Cliente?",
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                color: darkBlue,
                                fontSize: 22,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ),
                        ),
                        actions: [
                          FilledButton(
                            onPressed: () async {
                              await ref
                                  .read(clientDbProvider)
                                  .delateClient(snapshot.data!.clientId);
                              ref.invalidate(clientDbProvider);
                              context.pop();
                              context.pop();
                            },
                            child: const Text("SI"),
                          ),
                          FilledButton(
                            onPressed: () {
                              context.pop();
                            },
                            child: const Text("NO"),
                          ),
                        ],
                      ),
                    );
                  },
                  icon: const Icon(Icons.delete),
                ),
              ],
            ),
            body: Container(
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        color: darkGrey,
                        width: double.infinity,
                        height: 30,
                        child: const Text(
                          "NOMBRE COMPLETO",
                          style: TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            snapshot.data!.name,
                            style: const TextStyle(
                              color: darkGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Container(
                        padding: const EdgeInsets.only(left: 15),
                        alignment: Alignment.centerLeft,
                        color: darkGrey,
                        width: double.infinity,
                        height: 30,
                        child: const Text(
                          "DEUDA ACTUAL",
                          style: TextStyle(
                            color: white,
                            fontSize: 18,
                            fontWeight: FontWeight.w600,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: double.infinity,
                        height: 50,
                        child: Center(
                          child: Text(
                            "${snapshot.data!.money}",
                            style: const TextStyle(
                              color: darkGrey,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      Row(
                        children: [
                          CustomDateInformation(
                            label: "Ultimo Fiado",
                            date: snapshot.data!.lastSale,
                            color: darkBlue,
                          ),
                          const SizedBox(width: 6),
                          CustomDateInformation(
                            label: "Ultimo Pago",
                            date: snapshot.data!.lastPay,
                            color: darkBlue,
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                      const SizedBox(height: 40),
                      CustomTextFormField(
                        controller: _controller,
                        label: "Nueva Deuda",
                        textInputType: TextInputType.number,
                        funcionValidadora: InputValidator.numberValidator,
                      ),
                      const SizedBox(height: 30),
                      GestureDetector(
                        onTap: () async {
                          if (_formKey.currentState!.validate()) {
                            if (snapshot.data!.money <
                                int.parse(_controller.value.text)) {
                              await ref.read(clientDbProvider).updateClient(
                                    snapshot.data!.copyWith(
                                      money: int.parse(_controller.value.text),
                                      lastPay: DateTime.now(),
                                    ),
                                  );
                            } else {
                              await ref.read(clientDbProvider).updateClient(
                                    snapshot.data!.copyWith(
                                      money: int.parse(_controller.value.text),
                                      lastSale: DateTime.now(),
                                    ),
                                  );
                            }
                            ref.invalidate(clientDbProvider);
                            context.pop();
                          }
                        },
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: darkBlue,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              "GUARDAR",
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 15),
                      GestureDetector(
                        onTap: () {
                          context.pop();
                        },
                        child: Container(
                          height: 55,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: darkGrey,
                            borderRadius: BorderRadius.circular(30),
                          ),
                          child: const Center(
                            child: Text(
                              "CANCELAR",
                              style: TextStyle(
                                color: white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20)
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class CustomDateInformation extends StatelessWidget {
  final String label;
  final DateTime date;
  final Color color;

  const CustomDateInformation({
    super.key,
    required this.label,
    required this.date,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 140,
        decoration: BoxDecoration(
          border: Border.all(color: color, width: 3),
        ),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: 50,
              decoration:
                  BoxDecoration(border: Border.all(color: color), color: color),
              child: Center(
                child: Text(
                  label,
                  style: const TextStyle(color: white, fontSize: 17),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text(
                  "${date.day} / ${date.month} / ${date.year}",
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
