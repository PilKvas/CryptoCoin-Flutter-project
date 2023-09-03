import 'package:auto_route/auto_route.dart';
import 'package:crypto_application/features/crypto_coin/view/crypto_coin_screen.dart';
import 'package:crypto_application/features/crypto_list/view/crypto_list_screen.dart';
import 'package:crypto_application/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:flutter/material.dart';

part 'routes.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(page: CryptoListRoute.page, path: '/'),
        CupertinoRoute(page: CryptoCoinRoute.page),
      ];
}
