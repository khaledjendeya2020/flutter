import 'package:final_ahmed/pages/messages.dart';
import 'package:final_ahmed/pages/protein_bar.dart';
import 'package:final_ahmed/pages/settings.dart';
import 'package:flutter/material.dart';

class Godd_mornning extends StatelessWidget {
  const Godd_mornning({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/dark_sign_in.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          // top: 1,
          // right: 8,
          child: Stack(
            children: [
              Column(
                children: [
                  Stack(
                    children: [
                      SizedBox(
                        height: 350,
                        width: 400,
                        child: Container(
                            child: Stack(children: [
                          Container(
                              child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    image: AssetImage(
                                      "images/good.png",
                                    ),
                                    fit: BoxFit.fill)),
                          )),
                          Container(
                            alignment: Alignment.lerp(
                                Alignment.center, Alignment.topCenter, .6),
                            child: Image.asset(
                              'images/logo_good.png',
                              width: 54.83,
                              height: 31.71,
                              fit: BoxFit.cover,
                            ),
                          ),
                          Positioned(
                            top: 105,
                            left: 20,
                            child: Container(
                              child: Text(
                                'Good Mornnig',
                                style: TextStyle(
                                  fontSize: 26,
                                  color: Colors.white,
                                ),
                              ),
                              // alignment: Alignment.lerp(
                              //     Alignment.bottomRight, Alignment.bottomLeft, .2),
                            ),
                          ),
                          Positioned(
                            top: 144,
                            left: 20,
                            child: Container(
                              child: Text(
                                'Tuesday, 15 June 2018',
                                style: TextStyle(
                                    fontSize: 13, color: Colors.white),
                              ),
                              // alignment: Alignment.lerp(
                              //     Alignment.bottomRight, Alignment.bottomLeft, .2),
                            ),
                          ),
                          Positioned(
                            top: 105,
                            right: 30,
                            child: Container(
                              child: Text(
                                '36º',
                                style: TextStyle(
                                    fontSize: 40, color: Colors.white),
                              ),
                              // alignment: Alignment.lerp(
                              //     Alignment.bottomRight, Alignment.bottomLeft, .2),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(top: 150),
                            alignment: Alignment.bottomCenter,
                            height: 238.0,
                            child: ListView(
                              scrollDirection: Axis.horizontal, // <-- Like so
                              children: <Widget>[
                                Container(
                                  width: 300.0,
                                  height: 106.13,
                                  child: Image.asset(
                                    'images/card.png',
                                  ),
                                ),
                                Container(
                                  width: 300.0,
                                  height: 106.13,
                                  child: Image.asset(
                                    'images/card1.png',
                                  ),
                                ),
                                Container(
                                  width: 300.0,
                                  height: 106.13,
                                  child: Image.asset(
                                    'images/card2.png',
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ])),
                      ),
                      Positioned(
                        top: 52,
                        left: 336,
                        child: InkWell(
                            onTap: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Protein_Bar()));
                            },
                            child: Container(
                                child: Image.asset('images/disc.png'))),
                      )
                    ],
                  ),
                ],
              ),
              Positioned(
                top: 371,
                left: 15,
                child: Container(
                  child: Text(
                    '01:34 ',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 371,
                right: 54,
                child: Container(
                  child: Text(
                    '8793 ',
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 378,
                right: 30,
                child: Container(
                  child: Text(
                    'call ',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 378,
                left: 67,
                child: Container(
                  child: Text(
                    'hr ',
                    style: TextStyle(fontSize: 12, color: Colors.white),
                  ),
                ),
              ),
              Positioned(
                top: 462,
                left: 17,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/Gyms.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 164,
                  height: 88,
                ),
              ),
              Positioned(
                top: 462,
                left: 194,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/Trainers.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 164,
                  height: 88,
                ),
              ),
              Positioned(
                top: 563,
                left: 194,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/e-Commerce.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 164,
                  height: 88,
                ),
              ),
              Positioned(
                top: 563,
                left: 17,
                child: Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("images/Heath.png"),
                      fit: BoxFit.cover,
                    ),
                  ),
                  width: 164,
                  height: 88,
                ),
              ),
            ],
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/dark_sign_in.png"),
            fit: BoxFit.cover,
          ),
        ),
        child: Stack(
          children: [
            Container(
                margin: EdgeInsets.only(left: 170, bottom: 30),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Settings()));
                  },
                  icon: Image.asset('images/person.png'),
                  color: Color(0xff646781),
                )),
            Container(
              margin: EdgeInsets.only(left: 43),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Godd_mornning()));
                },
                icon: Image.asset(
                  "images/Page1.png",
                ),
              ),
            ),
            Container(
                margin: EdgeInsets.only(left: 300),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Messages()));
                  },
                  icon: Image.asset(
                    "images/msgicon.png",
                  ),
                ))
          ],
          // children: [
          //   InkWell(
          //     onTap: () {},
          //   )
          // ],
        ),
      ),
    );
  }
}
