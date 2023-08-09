import 'package:crypto_application/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
part 'crypto_list_state.dart';
part 'crypto_list_event.dart';

class CryptoListBloc extends Bloc<CryptoListEvent, CryptoListState> {
  final CryptoCoinsInterface coinRepository;
  CryptoListBloc(this.coinRepository) : super(CryptoListInitial()) {
    on<LoadCryptoList>((event, emit) async {
      try {
        final cryptoCoinList = await coinRepository.getCoins();
        emit(
          CryptoListLoaded(
            coinList: cryptoCoinList,
          ),
        );
      } catch (e) {
        emit(
          CryptoListLoadingFailure(e),
        );
      }
    });
  }
}
