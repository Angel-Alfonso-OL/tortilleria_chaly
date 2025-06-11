

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/presentation/provider/summary_db_provider.dart';

final lastSummaryProvider = FutureProvider<Summary>((ref) async {
  final listSummary = await ref.watch(summaryDbProvider).getAllSummary();
  return listSummary.last;
});


class Notifier extends StateNotifier<Summary?> {

  final Ref ref;
  Notifier(this.ref): super(null);

  void updateLastSummary(Summary newSummary) async{
   await ref.read(summaryDbProvider).updateSummary(newSummary);
   final a = await ref.read(summaryDbProvider).getAllSummary();
    state = a.last;
  }


  
}