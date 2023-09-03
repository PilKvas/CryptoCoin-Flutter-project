part of "crypto_list_bloc.dart";

abstract class CryptoListEvent extends Equatable {
  @override
  List<Object?> get props => [];
}

class LoadCryptoList extends CryptoListEvent {}
