import 'package:tortilleria_chaly/domain/entities/bills/bills.dart';

abstract class RespositoryBills{

  //Selected
  Future<Bills> getBillsById(int id);
  Future<List<Bills>> getAllBills();

  //Update
  Future<void> updateBills(Bills client);

  //Create
  Future<void> createBills(Bills client);

  //Delate
  Future<void> delateBills(int id);
}