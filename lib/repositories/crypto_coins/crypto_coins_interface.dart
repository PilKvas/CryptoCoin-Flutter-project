import 'models/models.dart';

abstract class CryptoCoinsInterface{
  Future<List<CryptoCoin>> getCoins();
}