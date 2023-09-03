part of "crypto_list_bloc.dart";

abstract class CryptoListState extends Equatable {
  @override
  List<Object?> get props => [];
}

class CryptoListInitial extends CryptoListState {
  @override
  List<Object?> get props => [];
}

class CryptoListLoaded extends CryptoListState {
  CryptoListLoaded({
    required this.coinList,
  });
  final List<CryptoCoin> coinList;
  @override
  List<Object?> get props => [coinList];
}

class CryptoListLoadingFailure extends CryptoListState {
  CryptoListLoadingFailure(this.exeption);

  final Object? exeption;
  @override
  List<Object?> get props => [exeption];
}
