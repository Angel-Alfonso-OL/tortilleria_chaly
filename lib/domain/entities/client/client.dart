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
  final Id clientId;
  final String name;
  final String nickName;
  final DateTime lastSale;
  final DateTime lastPay;
  final int money;

  Client({
    this.clientId = Isar.autoIncrement,
    required this.name,
    required this.nickName,
    required this.lastSale,
    required this.lastPay,
    required this.money,
  });

  Client copyWith({
    String? name,
    String? nickName,
    DateTime? lastSale,
    DateTime? lastPay,
    int? money,
  }) {
    return Client(
      clientId: clientId,
      name: name ?? this.name,
      nickName: nickName ?? this.nickName,
      lastSale: lastSale ?? this.lastSale,
      lastPay: lastPay ?? this.lastPay,
      money: money ?? this.money,
    );
  }
}
