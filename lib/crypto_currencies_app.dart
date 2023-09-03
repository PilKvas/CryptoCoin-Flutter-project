import 'package:crypto_application/features/crypto_list/bloc/cubit/theme_cubit.dart';
import 'package:crypto_application/routes/routes.dart';
import 'package:crypto_application/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CryptoCurrenciesApp extends StatefulWidget {
  const CryptoCurrenciesApp({super.key});

  @override
  State<CryptoCurrenciesApp> createState() => _CryptoCurrenciesAppState();
}

class _CryptoCurrenciesAppState extends State<CryptoCurrenciesApp> {
  final _appRouter = AppRouter();
  @override
  Widget build(BuildContext context) {
    ThemeCubit theme = BlocProvider.of(context, listen: true);
    return ScreenUtilInit(
      designSize: const Size(
        375,
        812,
      ),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp.router(
          debugShowCheckedModeBanner: false,
          title: 'Mobyte Birthday App',
          theme: theme.isDark ? darkTheme : lightTheme,
          routerConfig: _appRouter.config(),
        );
      },
    );
  }
}
