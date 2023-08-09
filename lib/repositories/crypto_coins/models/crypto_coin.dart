class CryptoCoin {
  CryptoCoin({
    required this.name,
    required this.price,
    required this.imageUrl,
  });

  final String name;
  final double price;
  final String imageUrl;


  @override
  String toString() {
    return name;
  }


}
