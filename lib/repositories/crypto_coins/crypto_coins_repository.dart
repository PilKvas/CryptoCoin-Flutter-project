import 'package:crypto_application/repositories/crypto_coins/crypto_coins_interface.dart';
import 'package:crypto_application/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CryptoCoinsRepository implements CryptoCoinsInterface{


  final Dio dio;

  CryptoCoinsRepository({required this.dio});

  @override
  Future<List<CryptoCoin>> getCoins() async {
    final response = await dio.get(
      'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BNB,USD,BTC,ETH,ADA,XRP,DOT,LTC,BCH,DOGE,LINK,UNI,XLM,FIL,SOL,AVAX,MATIC,THETA&tsyms=USD,EUR,RUB',
    );
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    debugPrint(dataRaw.entries.toString());
    final dataList = dataRaw.entries.map((coin) {
      final usdData = (coin.value as Map<String, dynamic>)['USD'];
      final price = usdData["PRICE"].toString();
 
      final imageUrl = usdData['IMAGEURL'];
      return CryptoCoin(
        name: coin.key,
        price: double.parse(price),
        imageUrl: "https://www.cryptocompare.com/$imageUrl",
      );
    }).toList();
    debugPrint(dataList.toString());
    return dataList;
  }
}
