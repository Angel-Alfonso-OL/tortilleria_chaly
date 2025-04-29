import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';

class IsarDbConnection {
  late final Isar isarConexion;

  IsarDbConnection(){
    _openDB();
  }

  void _openDB() async {
    final dir = await getApplicationDocumentsDirectory();
    isarConexion = await Isar.open(
      [ClientSchema],
      directory: dir.path,
    );
  }
}
