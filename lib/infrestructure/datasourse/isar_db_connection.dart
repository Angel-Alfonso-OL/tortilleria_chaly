import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';

class IsarDbConnection {
  late final Isar isarConexion;

  Future<void> openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    isarConexion = await Isar.open(
      [ClientSchema, SummarySchema],
      directory: dir.path,
    );
  }
}
