
import 'package:tortilleria_chaly/domain/datasourse/client_crud.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';
import 'package:tortilleria_chaly/domain/repository/repository_client.dart';

class ImpRepositoryClient extends RepositoryClient {
  final ClientCRUD dataBase;

  ImpRepositoryClient(this.dataBase);

  @override
  Future<void> createClient(Client client) async{
    await dataBase.createClient(client);
  }

  @override
  Future<List<Client>> getAllClients() async{
    return dataBase.getAllClients();
  }

  @override
  Future<Client> getClientById(int id) async{
    return await dataBase.getClientById(id);
  }

  @override
  Future<void> updateClient(Client client) async{
    dataBase.updateClient(client);
  }
}
