import 'package:isar/isar.dart';

part 'client.g.dart';

@collection
class Client {
  static Client defaulClient = Client(
    name: "Anonimo",
    nickName: "Anonimo",
    lastSale: DateTime(2000),
    lastPay: DateTime(2000),
    money: 0,
  );
  Id clientId = Isar.autoIncrement;
  final String name;
  final String nickName;
  final DateTime lastSale;
  final DateTime lastPay;
  final int money;

  Client({
    required this.name,
    required this.nickName,
    required this.lastSale,
    required this.lastPay,
    required this.money,
  });
}
