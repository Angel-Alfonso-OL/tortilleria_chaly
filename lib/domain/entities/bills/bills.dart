import 'package:isar/isar.dart';

@collection
class Bills {
  final Id billsId;
  final DateTime date;
  final int compras;
  final int gas;
  final int salario;
  final int comida;
  final int luz;

  Bills(
      {required this.billsId,
      required this.date,
      required this.compras,
      required this.gas,
      required this.salario,
      required this.comida,
      required this.luz}
  );
}
