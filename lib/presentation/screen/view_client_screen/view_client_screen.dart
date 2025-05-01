import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/presentation/provider/client_providers/get_client_by_id_provider.dart';

class ViewClientScreen extends ConsumerWidget {
  static const path = "/ViewClientScreen";
  final int idClient;
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
        future: ref.watch(getClientByIdProvider(idClient).future),
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
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
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
                        color: darkBlue,
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
                        height: 60,
                        child: Center(
                          child: Text(
                            snapshot.data!.name,
                            style: const TextStyle(
                              color: darkGrey,
                              fontSize: 18,
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
                            color: darkGrey,
                          ),
                          const SizedBox(width: 3),
                          CustomDateInformation(
                            label: "Ultimo Pago",
                            date: snapshot.data!.lastPay,
                            color: grey,
                          ),
                        ],
                      )
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
        height: 150,
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
