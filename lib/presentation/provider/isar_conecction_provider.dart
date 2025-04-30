import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/infrestructure/datasourse/isar_db_connection.dart';


final isarConnectionProvider = Provider<IsarDbConnection>((ref) {
  return IsarDbConnection();
});