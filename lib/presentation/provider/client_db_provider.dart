import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/infrestructure/datasourse/imp_client_crud.dart';
import 'package:tortilleria_chaly/infrestructure/repository/imp_repository_client.dart';
import 'package:tortilleria_chaly/presentation/provider/isar_conecction_provider.dart';

final clientDbProvider = Provider<ImpRepositoryClient>((ref) {
  final db = ref.watch(isarConnectionProvider);
  return ImpRepositoryClient(ImpDbClient(db.isarConexion));
});