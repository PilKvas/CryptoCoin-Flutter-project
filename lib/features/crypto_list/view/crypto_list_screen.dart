import 'dart:async';

import 'package:crypto_application/features/crypto_list/bloc/crypto_list_bloc.dart';
import 'package:crypto_application/features/crypto_list/widgets/widgets.dart';
import 'package:crypto_application/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class CryptoListScreen extends StatefulWidget {
  const CryptoListScreen({super.key});

  @override
  State<CryptoListScreen> createState() => _CryptoListScreenState();
}

class _CryptoListScreenState extends State<CryptoListScreen> {
  late Timer _timer;
  final _cryptoListBloc = CryptoListBloc(
    GetIt.I<CryptoCoinsInterface>(),
  );

  Future<void> _refreshCryptoList() async {
    _cryptoListBloc.add(LoadCryptoList());
  }

  @override
  void initState() {
    _cryptoListBloc.add(LoadCryptoList());
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Crypto Coin List"),
        actions: [
          IconButton(
            icon: Icon(Icons.sunny),
            onPressed: () {},
          ),
        ],
      ),
      body: BlocBuilder<CryptoListBloc, CryptoListState>(
        bloc: _cryptoListBloc,
        builder: (context, state) {
          if (state is CryptoListLoaded) {
            return RefreshIndicator(
              onRefresh: () => _refreshCryptoList(),
              child: ListView.separated(
                itemCount: state.coinList.length,
                separatorBuilder: (context, index) => const Divider(),
                itemBuilder: (context, index) {
                  return CryptoCoinTile(
                    coin: state.coinList[index],
                  );
                },
              ),
            );
          }
          if (state is CryptoListLoadingFailure) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("Something went wrong",
                      style: Theme.of(context).textTheme.bodyMedium),
                  Text(
                    "Try again later",
                    style: Theme.of(context).textTheme.labelSmall,
                  )
                ],
              ),
            );
          }
          return const Center(
            child: CircularProgressIndicator(),
          );
        },
      ),
    );
  }
}
