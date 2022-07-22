import 'package:ele_coin/models/coin.dart';
import 'package:ele_coin/widget/coin_widget.dart';
import 'package:flutter/material.dart';
import 'package:ele_coin/models/coin.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: Stack(
        children: [
          Stack(
            children: [
              Stack(
                children: [
                  Column(
                    children: [
                      Text(''),
                      Text(''),
                      Text(''),
                      Text(''),
                      Container(
                        alignment: Alignment.lerp(
                            Alignment.topLeft, Alignment.bottomCenter, .1),
                        child: Text(
                          'Your Acount Value',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.black87,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        alignment: Alignment.lerp(
                            Alignment.topLeft, Alignment.bottomCenter, .1),
                        child: Text(
                          '\$48.374.68 ',
                          style: TextStyle(fontSize: 30, color: Colors.black87),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    child: Image.asset('images/f.png',
                        width: double.infinity, fit: BoxFit.fill),
                  ),
                ],
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 40,
              ),
              Container(
                alignment: Alignment.lerp(
                    Alignment.bottomCenter, Alignment.topCenter, .3),
                height: 400,
                width: 400,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: AllCoins.length,
                    itemBuilder: (contxt, index) {
                      return Stack(
                        alignment: Alignment.center,
                        children: [
                          Stack(
                            children: [
                              InkWell(
                                onTap: () {},
                                child: Card(
                                  color: Colors.grey.shade100,
                                  elevation: 5.0,
                                  child: Stack(
                                    children: [
                                      Container(
                                          height: 150,
                                          width: 150,
                                          child: Stack(
                                            children: [
                                              Container(
                                                child: AllCoins[index].image,
                                                height: 60,
                                                width: 60,
                                              ),
                                              Container(
                                                alignment: Alignment.lerp(
                                                    Alignment.centerLeft,
                                                    Alignment.lerp(
                                                        Alignment.centerRight,
                                                        Alignment.topCenter,
                                                        .8),
                                                    .8),
                                                child: Text(
                                                  AllCoins[index].name,
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.lerp(
                                                    Alignment.centerLeft,
                                                    Alignment.lerp(
                                                        Alignment.centerRight,
                                                        Alignment.topCenter,
                                                        .6),
                                                    .56),
                                                child: Text(
                                                  AllCoins[index].icon,
                                                  style: TextStyle(),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.lerp(
                                                    Alignment.centerLeft,
                                                    Alignment.lerp(
                                                        Alignment.centerLeft,
                                                        Alignment.bottomCenter,
                                                        .9),
                                                    .6),
                                                child: Text(
                                                  '\$${AllCoins[index].price}',
                                                  style: TextStyle(
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                              Container(
                                                alignment: Alignment.lerp(
                                                    Alignment.centerRight,
                                                    Alignment.lerp(
                                                        Alignment.bottomLeft,
                                                        Alignment.centerLeft,
                                                        .101),
                                                    .85),
                                                child: Text(
                                                    AllCoins[index].market,
                                                    style: TextStyle(
                                                        fontWeight:
                                                            FontWeight.bold,
                                                        color: double.parse(
                                                                    '${AllCoins[index].market}') >=
                                                                0
                                                            ? Colors.green
                                                            : Colors.red)),
                                              )
                                            ],
                                          ))
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      );
                    }),
              ),
            ],
          ),
          Column(
            children: [
              SizedBox(
                height: 350,
              ),
              Container(
                alignment: Alignment.topLeft,
                child: Text(
                  '  Trending Bit Coins',
                  style: TextStyle(
                    fontSize: 24,
                  ),
                ),
              ),
              Stack(
                children: [
                  Container(
                    child: Card(
                      child: Column(
                        children: [
                          Container(
                            width: double.infinity,
                            height: 90,
                            alignment: Alignment.center,
                            child: Column(children: [
                              SizedBox(
                                height: 20,
                              ),
                              Container(
                                alignment: Alignment.lerp(
                                    Alignment.bottomCenter,
                                    Alignment.bottomLeft,
                                    .9),
                                child: Image.asset(
                                  'images/g.png',
                                  scale: .8,
                                ),
                              ),
                            ]),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ));
  }
}
