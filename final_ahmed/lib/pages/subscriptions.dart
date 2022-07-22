import 'package:flutter/material.dart';

class Subscriptions extends StatelessWidget {
  const Subscriptions({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/dark_sign_in.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Positioned(
                top: 1,
                right: 8,
                child: Column(
                  children: [
                    SizedBox(
                      height: 100,
                      width: 400,
                      child: Container(
                          child: Stack(children: [
                        Container(
                            child: Container(
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                          scale: .1,
                          image: AssetImage("images/Background.png"),
                        )))),
                        Positioned(
                          bottom: 8,
                          left: 130,
                          child: Container(
                            child: Text(
                              'Subscriptions',
                              style:
                                  TextStyle(fontSize: 25, color: Colors.white),
                            ),
                          ),
                        )
                      ])),
                    ),
                  ],
                ),
              ),
              Column(children: [
                SizedBox(
                  height: 29,
                ),
                Container(
                    width: 343,
                    height: 146,
                    color: Color(0xff2A2C41),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Positioned(
                          top: 5,
                          left: 100,
                          child: Container(
                            // alignment: Alignment.lerp(
                            //     Alignment.bottomCenter,
                            //     Alignment.lerp(Alignment.bottomLeft,
                            //         Alignment.topCenter, .1),
                            //     .1),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Ultimate Power Gym',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.lerp(
                              Alignment.topLeft,
                              Alignment.lerp(Alignment.bottomCenter,
                                  Alignment.centerRight, .1),
                              .2),
                          child: ClipOval(
                            child: Image.asset(
                              'images/body.png',
                              width: 56,
                              height: 56,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 84, child: Image.asset('images/line.png')),
                        Positioned(
                            top: 53,
                            left: 100,
                            child: Image.asset('images/stars.png')),
                        Positioned(
                            top: 95,
                            left: 28,
                            child: Text(
                              'Subscription Date',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF646781)),
                            )),
                        Positioned(
                            top: 120,
                            left: 28,
                            child: Text(
                              '25 June 2018',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )),
                        Positioned(
                            top: 118,
                            left: 120,
                            child: Text(
                              '➙',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF646781),
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 119,
                            left: 140,
                            child: Text(
                              '25 July 2018',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                        Positioned(
                            top: 95,
                            left: 265,
                            child: Text(
                              'Plan',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF646781)),
                            )),
                        Positioned(
                            top: 119,
                            left: 265,
                            child: Text(
                              '\$99 Monthly ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 343,
                    height: 146,
                    color: Color(0xff2A2C41),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Positioned(
                          top: 5,
                          left: 100,
                          child: Container(
                            // alignment: Alignment.lerp(
                            //     Alignment.bottomCenter,
                            //     Alignment.lerp(Alignment.bottomLeft,
                            //         Alignment.topCenter, .1),
                            //     .1),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Ultimate Power Gym',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.lerp(
                              Alignment.topLeft,
                              Alignment.lerp(Alignment.bottomCenter,
                                  Alignment.centerRight, .1),
                              .2),
                          child: ClipOval(
                            child: Image.asset(
                              'images/body.png',
                              width: 56,
                              height: 56,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 84, child: Image.asset('images/line.png')),
                        Positioned(
                            top: 53,
                            left: 100,
                            child: Image.asset('images/stars.png')),
                        Positioned(
                            top: 95,
                            left: 28,
                            child: Text(
                              'Subscription Date',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF646781)),
                            )),
                        Positioned(
                            top: 120,
                            left: 28,
                            child: Text(
                              '25 June 2018',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )),
                        Positioned(
                            top: 118,
                            left: 120,
                            child: Text(
                              '➙',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF646781),
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 119,
                            left: 140,
                            child: Text(
                              '25 July 2018',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                        Positioned(
                            top: 95,
                            left: 265,
                            child: Text(
                              'Plan',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF646781)),
                            )),
                        Positioned(
                            top: 119,
                            left: 265,
                            child: Text(
                              '\$99 Monthly ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 343,
                    height: 146,
                    color: Color(0xff2A2C41),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Positioned(
                          top: 5,
                          left: 100,
                          child: Container(
                            // alignment: Alignment.lerp(
                            //     Alignment.bottomCenter,
                            //     Alignment.lerp(Alignment.bottomLeft,
                            //         Alignment.topCenter, .1),
                            //     .1),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Ultimate Power Gym',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.lerp(
                              Alignment.topLeft,
                              Alignment.lerp(Alignment.bottomCenter,
                                  Alignment.centerRight, .1),
                              .2),
                          child: ClipOval(
                            child: Image.asset(
                              'images/body.png',
                              width: 56,
                              height: 56,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 84, child: Image.asset('images/line.png')),
                        Positioned(
                            top: 53,
                            left: 100,
                            child: Image.asset('images/stars.png')),
                        Positioned(
                            top: 95,
                            left: 28,
                            child: Text(
                              'Subscription Date',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF646781)),
                            )),
                        Positioned(
                            top: 120,
                            left: 28,
                            child: Text(
                              '25 June 2018',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )),
                        Positioned(
                            top: 118,
                            left: 120,
                            child: Text(
                              '➙',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF646781),
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 119,
                            left: 140,
                            child: Text(
                              '25 July 2018',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                        Positioned(
                            top: 95,
                            left: 265,
                            child: Text(
                              'Plan',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF646781)),
                            )),
                        Positioned(
                            top: 119,
                            left: 265,
                            child: Text(
                              '\$99 Monthly ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    )),
                SizedBox(
                  height: 20,
                ),
                Container(
                    width: 343,
                    height: 146,
                    color: Color(0xff2A2C41),
                    child: Stack(
                      children: [
                        SizedBox(
                          height: 10,
                        ),
                        Positioned(
                          top: 5,
                          left: 100,
                          child: Container(
                            // alignment: Alignment.lerp(
                            //     Alignment.bottomCenter,
                            //     Alignment.lerp(Alignment.bottomLeft,
                            //         Alignment.topCenter, .1),
                            //     .1),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  'Ultimate Power Gym',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.white,
                                      fontSize: 16),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.lerp(
                              Alignment.topLeft,
                              Alignment.lerp(Alignment.bottomCenter,
                                  Alignment.centerRight, .1),
                              .2),
                          child: ClipOval(
                            child: Image.asset(
                              'images/body.png',
                              width: 56,
                              height: 56,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Positioned(
                            top: 84, child: Image.asset('images/line.png')),
                        Positioned(
                            top: 53,
                            left: 100,
                            child: Image.asset('images/stars.png')),
                        Positioned(
                            top: 95,
                            left: 28,
                            child: Text(
                              'Subscription Date',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF646781)),
                            )),
                        Positioned(
                            top: 120,
                            left: 28,
                            child: Text(
                              '25 June 2018',
                              style:
                                  TextStyle(fontSize: 13, color: Colors.white),
                            )),
                        Positioned(
                            top: 118,
                            left: 120,
                            child: Text(
                              '➙',
                              style: TextStyle(
                                  fontSize: 13,
                                  color: Color(0xFF646781),
                                  fontWeight: FontWeight.bold),
                            )),
                        Positioned(
                            top: 119,
                            left: 140,
                            child: Text(
                              '25 July 2018',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                        Positioned(
                            top: 95,
                            left: 265,
                            child: Text(
                              'Plan',
                              style: TextStyle(
                                  fontSize: 13, color: Color(0xFF646781)),
                            )),
                        Positioned(
                            top: 119,
                            left: 265,
                            child: Text(
                              '\$99 Monthly ',
                              style: TextStyle(
                                fontSize: 13,
                                color: Colors.white,
                              ),
                            )),
                      ],
                    )),
              ])
            ],
          ),
        ],
      ),
      //   InkWell(
      //     onTap: () {},
      //   )
      // ],
    );
  }
}
