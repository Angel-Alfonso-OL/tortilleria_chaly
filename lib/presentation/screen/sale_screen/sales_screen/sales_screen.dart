import 'package:flutter/material.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/custom_text_form_field.dart';
import 'package:tortilleria_chaly/presentation/screen/widget/input_validator.dart';

part './row_bottons.dart';

class SalesScreen extends StatelessWidget {
  
  const SalesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Container(
        height: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
        child: const SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 15),
              Text(
                "Cantidad de Tortillas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: darkBlue,
                ),
              ),
              Divider(color: darkBlue),
              SizedBox(height: 15),
              
              SizedBox(height: 50),
              Text(
                "Tortillas Vendidas",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  color: darkBlue,
                ),
              ),
              Divider(color: darkBlue),
              SizedBox(height: 15),
              
              SizedBox(height: 30),
             
              SizedBox(height: 30),
              _RowBottons(),
            ],
          ),
        ),
      ),
    );
  }
}
