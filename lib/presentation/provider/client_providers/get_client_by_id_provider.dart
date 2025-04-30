import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';
import 'package:tortilleria_chaly/presentation/provider/client_providers/client_db_provider.dart';

final getClientByIdProvider = FutureProvider.family<Client,int>((ref, valor) async{
  return ref.watch(clientDbProvider).getClientById(valor);
});