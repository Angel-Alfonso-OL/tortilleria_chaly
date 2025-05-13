import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';
import 'package:tortilleria_chaly/presentation/provider/client_providers/get_list_client_provider.dart';

final getFilterListClientProvider =
    FutureProvider.family<List<Client>, String>((ref, value) async {
  return ref.watch(getListClientProvider).value!.where((client) {
    if (client.name.toUpperCase().contains(value.toUpperCase())) return true;
    if (client.nickName.toUpperCase().contains(value.toUpperCase()))
      return true;
    return false;
  }).toList();
});
