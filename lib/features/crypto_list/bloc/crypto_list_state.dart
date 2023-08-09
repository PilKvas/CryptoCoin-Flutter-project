part of "crypto_list_bloc.dart";

class CryptoListState {}

class CryptoListInitial extends CryptoListState {}

class CryptoListLoaded extends CryptoListState {
  CryptoListLoaded({
    required this.coinList,
  });
  final List<CryptoCoin> coinList;
}

class CryptoListLoadingFailure extends CryptoListState {
  CryptoListLoadingFailure(this.exeption);
  
  final Object? exeption;
}
