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

  static Summary defaulSummary = Summary(
    totalFiados: 0,
    totalPagados: 0,
    tortillasHechas: 0,
    tortillasSobrantes: 0,
    tortillasVendidas: 0,
    tortillasVendidasTienda: 0,
    tortillasVendidasEspeciales: 0,
    date: DateTime.now(),
  );

  Summary({
    Id id = Isar.autoIncrement,
    required this.totalFiados,
    required this.totalPagados,
    required this.tortillasHechas,
    required this.tortillasSobrantes,
    required this.tortillasVendidas,
    required this.tortillasVendidasTienda,
    required this.tortillasVendidasEspeciales,
    required this.date,
  });

  Summary copyWith({
    DateTime? date,
    int? tortillasHechas,
    int? tortillasSobrantes,
    int? tortillasVendidas,
    int? tortillasVendidasTienda,
    int? tortillasVendidasEspeciales,
    int? totalFiados,
    int? totalPagados,
  }) {
    return Summary(
      id: id,
      totalFiados: totalFiados ?? this.totalFiados,
      totalPagados: totalPagados ?? this.totalPagados,
      tortillasHechas: tortillasHechas ?? this.tortillasHechas,
      tortillasSobrantes: tortillasSobrantes ?? this.tortillasSobrantes,
      tortillasVendidas: tortillasVendidas ?? this.tortillasVendidas,
      tortillasVendidasTienda:
          tortillasVendidasTienda ?? this.tortillasVendidasTienda,
      tortillasVendidasEspeciales:
          tortillasVendidasEspeciales ?? this.tortillasVendidasEspeciales,
      date: date ?? this.date,
    );
  }
}
