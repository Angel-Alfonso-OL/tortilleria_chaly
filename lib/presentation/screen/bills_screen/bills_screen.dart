import 'package:flutter/material.dart';
import 'package:tortilleria_chaly/config/colors.dart';

class BillsScreen extends StatelessWidget {
  const BillsScreen({super.key});

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
      body: Container(
        height: double.infinity,
      ),
    );
  }
}
