import 'package:final_ahmed/pages/good_mornning.dart';
import 'package:final_ahmed/pages/settings.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

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
                          left: 140,
                          child: Container(
                            child: Text(
                              'Messege',
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
              Stack(
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff2A2C41),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            margin: EdgeInsets.all(20),
                            width: 343,
                            height: 80,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 3),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color(0xFF778899),
                                    backgroundImage: AssetImage(
                                        "images/Thumb.png"), // for Network image
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Nikolai Ostrovoi',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 10),
                                ),
                                Container(
                                  child: Text(
                                    'Ok but I must explain to you how all…',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 40),
                                ),
                                Container(
                                  child: Text(
                                    '1 min',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 280, top: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff2A2C41),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            margin: EdgeInsets.all(20),
                            width: 343,
                            height: 80,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 3),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color(0xFF778899),
                                    backgroundImage: AssetImage(
                                        "images/Ryan_Putnam.png"), // for Network image
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Ryan Putnam',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 10),
                                ),
                                Container(
                                  child: Text(
                                    'Ok but I must explain to you how all…',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 40),
                                ),
                                Container(
                                  child: Text(
                                    '12 min',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 280, top: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff2A2C41),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            margin: EdgeInsets.all(20),
                            width: 343,
                            height: 80,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 3),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color(0xFF778899),
                                    backgroundImage: AssetImage(
                                        "images/Thumb.png"), // for Network image
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Nikolai Ostrovoi',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 10),
                                ),
                                Container(
                                  child: Text(
                                    'Ok but I must explain to you how all…',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 40),
                                ),
                                Container(
                                  child: Text(
                                    '3 hr',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 280, top: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff2A2C41),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            margin: EdgeInsets.all(20),
                            width: 343,
                            height: 80,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 3),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color(0xFF778899),
                                    backgroundImage: AssetImage(
                                        "images/Ryan_Putnam.png"), // for Network image
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'Ryan Putnam',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 10),
                                ),
                                Container(
                                  child: Text(
                                    'Ok but I must explain to you how all…',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 40),
                                ),
                                Container(
                                  child: Text(
                                    '17 hr',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 280, top: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                      Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Color(0xff2A2C41),
                              borderRadius:
                                  BorderRadius.all(Radius.circular(8)),
                            ),
                            margin: EdgeInsets.all(20),
                            width: 343,
                            height: 80,
                            child: Stack(
                              children: [
                                Container(
                                  margin: EdgeInsets.only(left: 10, top: 3),
                                  child: CircleAvatar(
                                    radius: 30,
                                    backgroundColor: const Color(0xFF778899),
                                    backgroundImage: AssetImage(
                                        "images/George_Bokhua.png"), // for Network image
                                  ),
                                ),
                                Container(
                                  child: Text(
                                    'George Bokhua',
                                    style: TextStyle(
                                        fontSize: 16, color: Colors.white),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 10),
                                ),
                                Container(
                                  child: Text(
                                    'Ok but I must explain to you how all…',
                                    style: TextStyle(
                                        fontSize: 14, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 90, top: 40),
                                ),
                                Container(
                                  child: Text(
                                    '2 d',
                                    style: TextStyle(
                                        fontSize: 12, color: Color(0xff777A91)),
                                  ),
                                  margin: EdgeInsets.only(left: 280, top: 13),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ],
      ),
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
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 43),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Godd_mornning()));
                },
                icon: Image.asset('images/hoo.png'),
                color: Color(0xff646781),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 300),
              child: IconButton(
                onPressed: () {
                  Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => Messages()));
                },
                icon: Image.asset('images/meesg.png'),
                color: Colors.red,
              ),
            )
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
