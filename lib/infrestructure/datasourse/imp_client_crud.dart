import 'package:isar/isar.dart';
import 'package:tortilleria_chaly/domain/datasourse/client_crud.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';

class ImpDbClient extends ClientCRUD {
  final Isar isarConnectivity;

  ImpDbClient(this.isarConnectivity);

  @override
  Future<void> createClient(Client client) async {
    await isarConnectivity.writeTxn(() async {
      await isarConnectivity.clients.put(client);
    });
  }

  @override
  Future<List<Client>> getAllClients() async {
    return isarConnectivity.clients.where().findAll();
  }

  @override
  Future<Client> getClientById(int id) async {
    return await isarConnectivity.clients.get(id) ?? Client.defaulClient;
  }

  @override
  Future<void> updateClient(Client client) async {
    await isarConnectivity.writeTxn(() async {
      isarConnectivity.clients.put(client);
    });
  }
  
  
  @override
  Future<void> delateClient(int id) async{
     await isarConnectivity.writeTxn(() async {
      isarConnectivity.clients.delete(id);
    });
  }
}
