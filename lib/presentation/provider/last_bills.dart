import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/presentation/provider/summary_db_provider.dart';

final lastBillsProvider =
    StateNotifierProvider<LastBillsProvider, Summary>((ref) {
  return LastBillsProvider(ref);
});

class LastBillsProvider extends StateNotifier<Summary> {
  final Ref ref;

  LastBillsProvider(this.ref) : super(Summary.defaulSummary);

  Future<void> updateLastSummary() async {
    final listSumamry = await ref.read(summaryDbProvider).getAllSummary();
    state = listSumamry.last;
  }

  Future<void> insertNewSummary(Summary newSummary) async {
    await ref.read(summaryDbProvider).createSummary(newSummary);
    await updateLastSummary();
  }

  Future<void> discoverLastSummary() async {
    final a = await ref.read(summaryDbProvider).getAllSummary();
    //Si la lista no esta vacia
    if (a.isNotEmpty) {
      // Si la ultima fecha es diferente a la actual
      if (a.last.date.day != DateTime.now().day) {
        await insertNewSummary(Summary.defaulSummary);
      }
      //Si la lista esta vacia
    } else {
      await insertNewSummary(Summary.defaulSummary);
    }

    await updateLastSummary();
  }
}
