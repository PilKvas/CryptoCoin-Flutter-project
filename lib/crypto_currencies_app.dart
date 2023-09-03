import 'package:crypto_application/features/crypto_list/bloc/cubit/theme_cubit.dart';
import 'package:crypto_application/features/crypto_list/view/crypto_list_screen.dart';
import 'package:crypto_application/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CryptoCurrenciesApp extends StatelessWidget {
  const CryptoCurrenciesApp({super.key});

  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of(context, listen: true);
    return MaterialApp(
      theme:  theme.isDark ? darkTheme : lightTheme,
      home: const CryptoListScreen(),
    );
  }
}
