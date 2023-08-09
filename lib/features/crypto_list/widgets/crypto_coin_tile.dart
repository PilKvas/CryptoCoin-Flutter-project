import 'package:crypto_application/repositories/crypto_coins/models/models.dart';
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
      onTap: () => Navigator.of(context).pushNamed('/coinScreen'),
      leading: Image.network(coin.imageUrl),
      title: Text(
        coin.name,
        style: Theme.of(context).textTheme.bodyMedium,
      ),
      subtitle: Text(
        '${coin.price.toString()}\$',
        style: Theme.of(context).textTheme.labelSmall,
      ),
      trailing: const Icon(
        Icons.arrow_forward_ios_rounded,
      ),
    );
  }
}
