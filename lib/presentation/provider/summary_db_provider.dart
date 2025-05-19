import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/infrestructure/datasourse/imp_summary_crud.dart';
import 'package:tortilleria_chaly/infrestructure/repository/imp_repository_summary.dart';
import 'package:tortilleria_chaly/presentation/provider/isar_conecction_provider.dart';

final summaryDbProvider = Provider<ImpRepositorySummary>((ref) {
  final db = ref.watch(isarConnectionProvider);
  return ImpRepositorySummary(ImpDbSummary(db.isarConexion));
});