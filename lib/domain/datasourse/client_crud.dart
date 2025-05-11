
import 'package:tortilleria_chaly/domain/entities/client/client.dart';

abstract class ClientCRUD{

  //Selected
  Future<Client> getClientById(int id);
  Future<List<Client>> getAllClients();

  //Update
  Future<void> updateClient(Client client);

  //Create
  Future<void> createClient(Client client);

  //Delate
  Future<void> delateClient(int id);
}