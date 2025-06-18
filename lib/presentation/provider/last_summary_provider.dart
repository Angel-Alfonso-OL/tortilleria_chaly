import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/presentation/provider/summary_db_provider.dart';

final lastSummaryProvider =
    StateNotifierProvider<LastSummaryProvider, Summary>((ref) {
  return LastSummaryProvider(ref);
});

class LastSummaryProvider extends StateNotifier<Summary> {
  final Ref ref;

  LastSummaryProvider(this.ref) : super(Summary.defaulSummary);

  Future<void> updateLastSummary() async {
    final listSumamry = await ref.read(summaryDbProvider).getAllSummary();
    state = listSumamry.last;
  }

  Future<void> insertNewSummary(Summary newSummary) async{
    await ref.read(summaryDbProvider).createSummary(newSummary);
    await updateLastSummary();
  }

  Future<void> discoverLastSummary() async{
     final a = await ref.read(summaryDbProvider).getAllSummary();
    //Si la lista no esta vacia
    if (a.isNotEmpty) {
      // Si la ultima fecha es diferente a la actual
      if (a.last.date.day != DateTime.now().day) {
        await insertNewSummary(
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
      //Si la lista esta vacia
    } else {
      await insertNewSummary(
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
    
    await updateLastSummary();
  }
}
