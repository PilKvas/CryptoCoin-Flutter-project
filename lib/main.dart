import 'package:crypto_application/crypto_currencies_app.dart';
import 'package:crypto_application/repositories/crypto_coins/crypto_coins_interface.dart';
import 'package:crypto_application/repositories/crypto_coins/crypto_coins_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';

void main() {
  GetIt.I.registerLazySingleton<CryptoCoinsInterface>(
    () => CryptoCoinsRepository(dio: Dio()),
  );
  runApp(const CryptoCurrenciesApp());
}
