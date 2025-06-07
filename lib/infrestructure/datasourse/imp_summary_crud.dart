import 'package:isar/isar.dart';
import 'package:tortilleria_chaly/domain/datasourse/summary_crud.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';

class ImpDbSummary extends SummaryCRUD {
  final Isar isarConnectivity;

  ImpDbSummary(this.isarConnectivity);

  @override
  Future<void> createSummary(Summary value) async {
    await isarConnectivity.writeTxn(() async {
       isarConnectivity.summarys.put(value);
    });
  }

  @override
  Future<List<Summary>> getAllSummary() async {
    return isarConnectivity.summarys.where().findAll();
  }

  @override
  Future<Summary> getSummaryById(int id) async {
    return await isarConnectivity.summarys.get(id) ?? Summary.defaulSummary;
  }

  @override
  Future<void> updateSummary(Summary value) async {
    await isarConnectivity.writeTxn(() async {
      isarConnectivity.summarys.put(value);
    });
  }
  
  
  @override
  Future<void> deleteSummary(int id) async{
     await isarConnectivity.writeTxn(() async {
      isarConnectivity.summarys.delete(id);
    });
  }
}
