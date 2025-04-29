import 'package:isar/isar.dart';

part 'summary.g.dart';

@collection
class Summary {
  final Id id = Isar.autoIncrement;
  final DateTime date;
  final int tortillasHechas;
  final int tortillasSobrantes;
  final int tortillasVendidas;
  final int tortillasVendidasTienda;
  final int tortillasVendidasEspeciales;
  final int totalFiados;
  final int totalPagados;

  Summary({
    required this.totalFiados,
    required this.totalPagados,
    required this.tortillasHechas,
    required this.tortillasSobrantes,
    required this.tortillasVendidas,
    required this.tortillasVendidasTienda,
    required this.tortillasVendidasEspeciales,
    required this.date,
  });
}
