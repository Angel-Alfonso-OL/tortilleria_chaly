import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';
import 'package:tortilleria_chaly/presentation/provider/client_providers/client_db_provider.dart';

final getListClientProvider = FutureProvider.autoDispose<List<Client>>((ref)  async{
  final listClient = await ref.watch(clientDbProvider).getAllClients();
  return listClient;
});

