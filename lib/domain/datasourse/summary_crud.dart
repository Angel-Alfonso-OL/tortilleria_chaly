import 'package:tortilleria_chaly/domain/entities/summary/summary.dart';

abstract class SummaryCRUD {
  //Selected
  Summary getSummaryById(int id);
  List<Summary> getAllSummary();

  //Update
  void updateSummary(Summary client);

  //Create
  void createSummary(Summary client);

  //Delete
  void deleteSummary();
}