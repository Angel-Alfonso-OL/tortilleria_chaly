

import 'package:isar/isar.dart';
import 'package:tortilleria_chaly/domain/datasourse/bills_crud.dart';
import 'package:tortilleria_chaly/domain/entities/bills/bills.dart';

class ImpDbBills implements BillsCRUD{

  final Isar isarConnectivity;

  ImpDbBills(this.isarConnectivity);
 
  @override
  Future<void> createBills(Bills client) async{
    await isarConnectivity.writeTxn(() async {
      await isarConnectivity.bills.put(client);
    });
  }

  @override
  Future<void> delateBills(int id) async{
     await isarConnectivity.writeTxn(() async {
      isarConnectivity.bills.delete(id);
    });
  }

  @override
  Future<List<Bills>> getAllBills() async{
    return isarConnectivity.bills.where().findAll();
  }

  @override
  Future<Bills> getBillsById(int id) async{
    return await isarConnectivity.bills.get(id) ?? Bills.defaultBills;
  }

  @override
  Future<void> updateBills(Bills client) async{
     await isarConnectivity.writeTxn(() async {
      isarConnectivity.bills.put(client);
    });
  }

}