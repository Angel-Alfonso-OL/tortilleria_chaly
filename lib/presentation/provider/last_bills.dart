import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/domain/entities/bills/bills.dart';
import 'package:tortilleria_chaly/presentation/provider/bills_db_provider.dart';

final lastBillsProvider =
    StateNotifierProvider<LastBillsProvider, Bills>((ref) {
  return LastBillsProvider(ref);
});

class LastBillsProvider extends StateNotifier<Bills> {
  final Ref ref;

  LastBillsProvider(this.ref) : super(Bills.defaultBills);

  Future<void> updateLastBills() async {
    final listBills = await ref.read(billsDbProvider).getAllBills();
    state = listBills.last;
  }

  Future<void> insertNewBills(Bills newBills) async {
    await ref.read(billsDbProvider).createBills(newBills);
    await updateLastBills();
  }

  Future<void> discoverLastBills() async {
    final a = await ref.read(billsDbProvider).getAllBills();
    //Si la lista no esta vacia
    if (a.isNotEmpty) {
      // Si la ultima fecha es diferente a la actual
      if (a.last.date.day != DateTime.now().day) {
        await insertNewBills(Bills.defaultBills);
      }
      //Si la lista esta vacia
    } else {
      await insertNewBills(Bills.defaultBills);
    }

    await updateLastBills();
  }
}
