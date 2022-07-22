import 'package:ele_coin/models/coin.dart';
import 'package:flutter/material.dart';

class CoinWidget extends StatelessWidget {
  const CoinWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
            children: [
              Stack(
                children: [
                  Card(
                    child: Stack(
                      children: [
                        Container(
                            height: 150,
                            width: 150,
                            child: Stack(
                              children: [
                                Container(
                                  child: AllCoins[0].image,
                                  height: 60,
                                  width: 60,
                                ),
                                Container(
                                  alignment: Alignment.lerp(
                                      Alignment.centerLeft,
                                      Alignment.lerp(Alignment.centerRight,
                                          Alignment.topCenter, .8),
                                      .8),
                                  child: Text(
                                    AllCoins[0].name,
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.lerp(
                                      Alignment.centerLeft,
                                      Alignment.lerp(Alignment.centerRight,
                                          Alignment.topCenter, .6),
                                      .56),
                                  child: Text(
                                    AllCoins[0].icon,
                                    style: TextStyle(),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.lerp(
                                      Alignment.centerLeft,
                                      Alignment.lerp(Alignment.centerLeft,
                                          Alignment.bottomCenter, .9),
                                      .6),
                                  child: Text(
                                    '\$${AllCoins[0].price}',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Container(
                                  alignment: Alignment.lerp(
                                      Alignment.centerRight,
                                      Alignment.lerp(Alignment.bottomLeft,
                                          Alignment.centerLeft, .101),
                                      .85),
                                  child: Text(AllCoins[0].market,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          color: double.parse(
                                                      '${AllCoins[0].market}') >=
                                                  0
                                              ? Colors.green
                                              : Colors.red)),
                                )
                              ],
                            ))
                      ],
                    ),
                  ),
                ],
              )
            ],
          );
  }
}
