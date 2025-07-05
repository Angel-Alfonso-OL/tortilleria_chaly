import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/presentation/provider/last_summary_provider.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';
import 'package:tortilleria_chaly/presentation/provider/client_db_provider.dart';
import 'package:tortilleria_chaly/presentation/provider/isar_conecction_provider.dart';


part './confirmation_dialog.dart';

class CreateClientScreen extends ConsumerWidget {
  static const path = "/CreateClientScreen";

  CreateClientScreen({super.key});

  final _formKey = GlobalKey<FormState>();
  final _textControllerName = TextEditingController();
  final _textControllerNickname = TextEditingController();
  final _textControllerdauda = TextEditingController();

  @override
  Widget build(BuildContext context, ref) {
    ref.watch(isarConnectionProvider);
    final fecha = DateTime.now();
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "  REGISTRAR CLIENTE",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.w600),
          ),
          centerTitle: true,
          leading: GestureDetector(
            onTap: () {
              context.pop();
            },
            child: const Icon(
              Icons.close,
              size: 28,
            ),
          ),
          backgroundColor: darkBlue,
          foregroundColor: white,
        ),
        body: Container(
          height: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
          child: SingleChildScrollView(
            child: Form(
              key: _formKey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  const SizedBox(height: 10),
                  const Icon(Icons.account_circle, size: 130, color: darkGrey),
                  const Divider(
                    height: 2,
                    color: darkGrey,
                  ),
                  const SizedBox(height: 30),
                  TextFormField(
                    enabled: false,
                    style: const TextStyle(
                        color: darkBlue,
                        fontWeight: FontWeight.w600,
                        fontSize: 16),
                    initialValue:
                        "${fecha.day} / ${fecha.month} / ${fecha.year}",
                    textCapitalization: TextCapitalization.words,
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: const InputDecoration(
                      label: Text("FECHA DE REGISTRO"),
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    controller: _textControllerName,
                    label: "NOMBRE",
                    textInputType: TextInputType.name,
                    funcionValidadora: InputValidator.textValidator,
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    controller: _textControllerNickname,
                    label: "APODO",
                    textInputType: TextInputType.name,
                    funcionValidadora: InputValidator.textValidator,
                  ),
                  const SizedBox(height: 30),
                  CustomTextFormField(
                    controller: _textControllerdauda,
                    label: "DEUDA",
                    textInputType: TextInputType.number,
                    funcionValidadora: InputValidator.numberValidator,
                  ),
                  const SizedBox(height: 30),
                  GestureDetector(
                    onTap: () async {
                      if (_formKey.currentState!.validate()) {
                        await showDialog(
                          context: context,
                          builder: (context) {
                            return ConfirmationDialog(
                                textControllerName: _textControllerName,
                                textControllerNickname: _textControllerNickname,
                                textControllerdauda: _textControllerdauda);
                          },
                        );
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
                  const SizedBox(
                    height: 20,
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
