import 'package:tortilleria_chaly/domain/datasourse/summary_crud.dart';
import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';
import 'package:tortilleria_chaly/domain/repository/repository_summary.dart';

class ImpRepositorySummary extends RepositorySummary {
  final SummaryCRUD dataBase;

  ImpRepositorySummary(this.dataBase);

  @override
  Future<void> createSummary(Summary value) async {
    await dataBase.createSummary(value);
  }

  @override
  Future<void> deleteSummary(int id) async {
    await dataBase.deleteSummary(id);
  }

  @override
  Future<List<Summary>> getAllSummary() async {
    return await dataBase.getAllSummary();
  }

  @override
  Future<Summary> getSummaryById(int id) async {
    return await dataBase.getSummaryById(id);
  }

  @override
  Future<void> updateSummary(Summary value) async {
    await dataBase.updateSummary(value);
  }
}
