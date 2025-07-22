import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/infrestructure/datasourse/imp_bills_crud.dart';
import 'package:tortilleria_chaly/infrestructure/repository/imp_repository_bills.dart';
import 'package:tortilleria_chaly/presentation/provider/isar_conecction_provider.dart';

final billsDbProvider = Provider<ImpRepositoryBills>((ref) {
  final db = ref.watch(isarConnectionProvider);
  return ImpRepositoryBills(ImpDbBills(db.isarConexion));
});