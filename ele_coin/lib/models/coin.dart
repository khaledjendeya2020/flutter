import 'package:flutter/cupertino.dart';

class Coin {
  String name;
  String icon;
  String price;
  Image image;
  String market;
  Coin(this.name, this.icon, this.price, this.image, this.market);
}

List<Coin> AllCoins = [
  Coin(
      'Bit coin',
      'BTC',
      '359.536.28',
      Image.asset(
        'images/d.png',
      ),
      '-0.45'),
  Coin('Ethereum', 'ETH', '10.699.58', Image.asset('images/e.png'), '0.56'),
  Coin('Shiba', 'SHIB', '.000523', Image.asset('images/shib.png'), '-2.8'),
  Coin('XRP', 'XRP', 'XRP', Image.asset('images/xrp.webp'), '.98'),
  Coin('CITI', 'CITI', '.002', Image.asset('images/city.webp'), '-0.1')
];
