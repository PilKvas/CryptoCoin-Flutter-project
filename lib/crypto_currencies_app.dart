import 'package:crypto_application/features/crypto_list/view/crypto_list_screen.dart';
import 'package:crypto_application/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciesApp extends StatelessWidget {
  const CryptoCurrenciesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: lightTheme,
      home: const CryptoListScreen(),
    );
  }
}
