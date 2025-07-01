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
      {this.billsId = Isar.autoIncrement,
      required this.date,
      required this.compras,
      required this.gas,
      required this.salario,
      required this.comida,
      required this.luz});

  static Bills defaultBills = Bills(
    date: DateTime.now(),
    compras: 0,
    gas: 0,
    salario: 0,
    comida: 0,
    luz: 0,
  );

  Bills copyWith(
    DateTime? date,
    int? compras,
    int? gas,
    int? comida,
    int? luz,
    int? salario,
  ) {
    return Bills(
      billsId: billsId,
      date: date ?? this.date,
      compras: compras ?? this.compras,
      gas: gas ?? this.gas,
      salario: salario ?? this.salario,
      comida: comida ?? this.comida,
      luz: luz ?? this.luz,
    );
  }
}
