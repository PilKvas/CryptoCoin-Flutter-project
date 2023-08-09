import 'package:crypto_application/routes/routes.dart';
import 'package:crypto_application/theme/theme.dart';
import 'package:flutter/material.dart';

class CryptoCurrenciesApp extends StatelessWidget {
  const CryptoCurrenciesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: darkTheme,
      routes: routes,
    );
  }
}
