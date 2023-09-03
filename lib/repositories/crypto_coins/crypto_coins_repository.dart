import 'package:crypto_application/repositories/crypto_coins/crypto_coins_interface.dart';
import 'package:crypto_application/repositories/crypto_coins/models/crypto_coin.dart';
import 'package:crypto_application/repositories/crypto_coins/models/crypto_coins_details.dart';
import 'package:dio/dio.dart';

class CryptoCoinsRepository implements CryptoCoinsInterface {
  final Dio dio;

  CryptoCoinsRepository({required this.dio});

  @override
  Future<List<CryptoCoin>> getCoins() async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=BTC,ETH,BNB,SOL,ADA,XRP,DOT,DOGE,LTC,LINK,BCH,UNI,XLM,ETC,FIL,TRX,XMR,VET,EOS,DASH,XTZ,ZEC,MKR,ATOM,ICX,OMG,ALGO,NEO,LUNA,AAVE,KSM,THETA,ICP,GRT,MATIC,XEM,STX,FTM,ENJ,WAVES,ZIL,CRV,MANA,BAT,SUSHI,REN,SNX,COMP,YFI,UMA,CELO,AAVE,CAKE,SOL,FTT,MATIC,AAVE,SNX,ICX,BNT,1INCH,KNC,ANKR,SNM,RSR,XVG,WTC,LRC,KAVA,ARDR,XWC,STPT,BAND,LINKEY,CTXC,GXC,ONT,HC,ZEN,ZRX,COTI,WAN,CVC,PPT,MXC,AST,AE,BTM,KNC,MTL,ANKR,WICC,LRC,TOMO,QTUM,REP,GAS,SC,DCR,ETN,SNT,DGB&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final cryptoCoinsList = dataRaw.entries.map((e) {
      final usdData =
          (e.value as Map<String, dynamic>)['USD'] as Map<String, dynamic>;
      final details = CryptoCoinDetail.fromJson(usdData);
      return CryptoCoin(name: e.key, details: details);
    }).toList();
    return cryptoCoinsList;
  }

  @override
  Future<CryptoCoin> getCoinDetails(String currencyCode) async {
    final response = await dio.get(
        'https://min-api.cryptocompare.com/data/pricemultifull?fsyms=$currencyCode&tsyms=USD');
    final data = response.data as Map<String, dynamic>;
    final dataRaw = data['RAW'] as Map<String, dynamic>;
    final coinData = dataRaw[currencyCode] as Map<String, dynamic>;
    final usdData = coinData['USD'] as Map<String, dynamic>;
    final details = CryptoCoinDetail.fromJson(usdData);
    return CryptoCoin(name: currencyCode, details: details);
  }
}
