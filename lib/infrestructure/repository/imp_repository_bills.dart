import 'package:tortilleria_chaly/domain/datasourse/bills_crud.dart';
import 'package:tortilleria_chaly/domain/entities/bills/bills.dart';
import 'package:tortilleria_chaly/domain/repository/respository_bills.dart';

class ImpRepositoryBills implements RespositoryBills {
  final BillsCRUD dataBase;

  ImpRepositoryBills( this.dataBase);

  @override
  Future<void> createBills(Bills bills) async {
    await dataBase.createBills(bills);
  }

  @override
  Future<void> delateBills(int id) async {
    await dataBase.delateBills(id);
  }

  @override
  Future<List<Bills>> getAllBills() async {
    return dataBase.getAllBills();
  }

  @override
  Future<Bills> getBillsById(int id) async {
    return await dataBase.getBillsById(id);
  }

  @override
  Future<void> updateBills(Bills bills) async {
    await dataBase.updateBills(bills);
  }
}
