import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:tortilleria_chaly/config/colors.dart';
import 'package:tortilleria_chaly/domain/entities/client/client.dart';
import 'package:tortilleria_chaly/presentation/provider/client_db_provider.dart';
import 'package:tortilleria_chaly/presentation/screen/create_client_screen/create_client_screen.dart';
import 'package:tortilleria_chaly/presentation/screen/view_client_screen/view_client_screen.dart';

class ListClientScreen extends ConsumerWidget {
  static const path = "/ListClientScreen";
  const ListClientScreen({super.key});

  @override
  Widget build(BuildContext context, ref) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: darkBlue,
        title: Container(
          //color: Colors.red,
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: const TextField(
            cursorColor: white,
            autocorrect: false,
            textCapitalization: TextCapitalization.words,
            style: TextStyle(color: white),
            textAlign: TextAlign.center,
            decoration: InputDecoration(
              hintStyle: TextStyle(color: white),
              enabledBorder:
                  UnderlineInputBorder(borderSide: BorderSide(color: white)),
              focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: white)),
              prefix: Icon(
                Icons.search,
                color: white,
              ),
            ),
          ),
        ),
      ),
      body: FutureBuilder(
        future: ref.watch(clientDbProvider).getAllClients(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
          if (snapshot.data!.isEmpty || snapshot.data == null) {
            return const Center(
              child: Text("No Existe Ningun Registro"),
            );
          }
          return FadeInUp(
            child: ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
              itemCount: snapshot.data!.length,
              itemBuilder: (_, index) => _CustomListTileClient(
                val: (index % 2) == 0 ? true : false,
                client: snapshot.data![index],
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context.pushNamed(CreateClientScreen.path);
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _CustomListTileClient extends StatelessWidget {
  final bool val;
  final Client client;

  const _CustomListTileClient({required this.client, required this.val});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: ListTile(
        onTap: () {
          context.pushNamed(ViewClientScreen.path,
              pathParameters: {"id": "${client.clientId}"});
        },
        trailing: Container(
          decoration: BoxDecoration(
              color: darkBlue, borderRadius: BorderRadius.circular(10)),
          width: 80,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "DEUDA",
                style: TextStyle(
                    fontSize: 13, color: white, fontWeight: FontWeight.w700),
              ),
              Text(
                r"$" "${client.money}",
                style: const TextStyle(
                    fontSize: 23, color: white, fontWeight: FontWeight.w800),
              ),
            ],
          ),
        ),
        title: Text(client.nickName),
        subtitle: Text(client.name),
      ),
    );
  }
}
