import 'package:auto_route/auto_route.dart';
import 'package:crypto_application/features/crypto_coin/bloc/crypto_coin_bloc.dart';
import 'package:crypto_application/features/crypto_coin/widgets/widgets.dart';
import 'package:crypto_application/repositories/crypto_coins/crypto_coins.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get_it/get_it.dart';

@RoutePage()
class CryptoCoinScreen extends StatefulWidget {
  const CryptoCoinScreen({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  State<CryptoCoinScreen> createState() => _CryptoCoinScreenState();
}

class _CryptoCoinScreenState extends State<CryptoCoinScreen> {
  // CryptoCoin? coin;

  final _coinDetailsBloc = CryptoCoinDetailsBloc(
    GetIt.I<CryptoCoinsInterface>(),
  );

  @override
  void initState() {
    _coinDetailsBloc.add(LoadCryptoCoinDetails(currencyCode: widget.coin.name));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: BlocBuilder<CryptoCoinDetailsBloc, CryptoCoinDetailsState>(
        bloc: _coinDetailsBloc,
        builder: (context, state) {
          if (state is CryptoCoinDetailsLoaded) {
            final coin = state.coin;
            final coinDetails = coin.details;
            return Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 160.h,
                    width: 160.w,
                    child: Image.network(coinDetails.fullImageUrl),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    coin.name,
                    style: TextStyle(
                      fontSize: 26.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  SizedBox(height: 8.h),
                  BaseCard(
                    child: Center(
                      child: Text(
                        '${coinDetails.priceInUSD} \$',
                      ),
                    ),
                  ),
                  BaseCard(
                    child: Column(
                      children: [
                        _DataRow(
                          title: 'Hight 24 Hour',
                          value: '${coinDetails.hight24Hour} \$',
                        ),
                        SizedBox(height: 6.h),
                        _DataRow(
                          title: 'Low 24 Hour',
                          value: '${coinDetails.low24Hours} \$',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            );
          }
          return const Center(child: CircularProgressIndicator());
        },
      ),
    );
  }
}

class _DataRow extends StatelessWidget {
  const _DataRow({
    required this.title,
    required this.value,
  });

  final String title;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(width: 140.w, child: Text(title)),
        SizedBox(width: 32.w),
        Flexible(
          child: Text(value),
        ),
      ],
    );
  }
}
