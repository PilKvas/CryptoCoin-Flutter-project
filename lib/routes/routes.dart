import 'package:crypto_application/features/crypto_coin/crypto_coin.dart';
import 'package:crypto_application/features/crypto_list/crypto_list.dart';

final routes = {
  '/': (context) => const CryptoListScreen(),
  '/coinScreen': (context) => const CryptoCoinScreen(),
};
