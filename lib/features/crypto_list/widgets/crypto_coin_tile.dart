import 'package:auto_route/auto_route.dart';
import 'package:crypto_application/repositories/crypto_coins/models/models.dart';
import 'package:crypto_application/routes/routes.dart';
import 'package:flutter/material.dart';

class CryptoCoinTile extends StatelessWidget {
  const CryptoCoinTile({
    super.key,
    required this.coin,
  });

  final CryptoCoin coin;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () => AutoRouter.of(context).push(CryptoCoinRoute(coin: coin)),
      leading: Image.network(coin.details.fullImageUrl),
      title: Text(
        coin.name,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${coin.details.priceInUSD.toString()}\$',
        style: Theme.of(context).textTheme.labelSmall,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}
