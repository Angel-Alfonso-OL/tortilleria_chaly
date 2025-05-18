import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';

abstract class SummaryCRUD {
  //Selected
  
  Future<Summary> getSummaryById(int id);
  
  Future<List<Summary>> getAllSummary();

  //Update
  Future<void> updateSummary(Summary value);

  //Create
  Future<void> createSummary(Summary value);

  //Delete
  Future<void> deleteSummary(int id);
}