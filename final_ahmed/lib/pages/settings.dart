import 'package:final_ahmed/pages/good_mornning.dart';
import 'package:final_ahmed/pages/messages.dart';
import 'package:final_ahmed/pages/protein_bar.dart';
import 'package:final_ahmed/pages/subscriptions.dart';
import 'package:flutter/material.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

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
                        child: Container(
                            child: Stack(children: [
                          Container(
                            width: 400,
                            height: 200,
                            decoration: BoxDecoration(
                                color: Color(0xFFEC6454),
                                borderRadius: new BorderRadius.only(
                                  bottomLeft: const Radius.circular(40.0),
                                  bottomRight: const Radius.circular(40.0),
                                )),
                          ),

                          Positioned(
                            top: 40,
                            left: MediaQuery.of(context).size.width / 2.5,
                            child: Container(
                              child: Text(
                                'Settings',
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
                            top: 110,
                            left: 117,
                            child: Container(
                              child: Text(
                                'Abdulhamid Dawas',
                                style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.white,
                                ),
                              ),
                              // alignment: Alignment.lerp(
                              //     Alignment.bottomRight, Alignment.bottomLeft, .2),
                            ),
                          ),
                          Positioned(
                            top: 147,
                            left: 117,
                            child: Container(
                              child: Text(
                                'Saudi Arabia, Riyadh',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.white,
                                ),
                              ),
                              // alignment: Alignment.lerp(
                              //     Alignment.bottomRight, Alignment.bottomLeft, .2),
                            ),
                          ),
                          Positioned(
                            top: 90,
                            left: 10,
                            child: ClipOval(
                              child: Image.asset(
                                'images/oval2.png',
                                width: 130,
                                height: 120,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          // Positioned(
                          //   top: 126,
                          //   left: 317,
                          //   child: Image.network(
                          //     'https://cdn-icons.flaticon.com/png/512/2997/premium/2997944.png?token=exp=1657536856~hmac=032c2e434c58d9530e125cfa8e790092',
                          //     width: 28,
                          //     height: 28,
                          //     color: Colors.white,
                          //   ),
                          // )
                        ])),
                      ),
                      Positioned(
                          right: 36,
                          top: 130,
                          child: Container(
                              child: InkWell(
                                  onTap: () {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                Subscriptions()));
                                  },
                                  child: Image.asset(
                                    'images/set.png',
                                  ))))
                    ],
                  ),
                ],
              ),
              // Positioned(
              //   top: 300,
              //   left: 20,
              //   child: Positioned(
              //     child: Container(
              //       color: Color(0xFF26273B),
              //       child: Row(
              //         children: [Text('Aboutsdasdasdasdasdas You')],
              //       ),
              //     ),
              //   ),
              // )s
              SizedBox(
                height: 20,
              ),

              Positioned(
                top: 233,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 235,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/acct.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 247,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'About You ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),

//////////////////////////////////////////////

              Positioned(
                top: 273,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 278,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/Email.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 287,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'Email ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: 292,
                left: 190,
                child: Container(
                  child: Row(children: [
                    Text(
                      'abdawas@gmail.com ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF777A91),
                      ),
                    )
                  ]),
                ),
              ),

              /////////////////////////////
              ///
              ///
              ///
              Positioned(
                top: 320,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 320,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/phon.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 330,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'Phon ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: 338,
                left: 190,
                child: Container(
                  child: Row(children: [
                    Text(
                      '    +972 59 4041 098 ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF777A91),
                      ),
                    )
                  ]),
                ),
              ),
              ///////////////////
              ///
              ///
              Positioned(
                top: 365,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 365,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/phon.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 378,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'Passowrd ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              //////////
              ///
              ///
              Positioned(
                top: 410,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 410,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/country.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 422,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'Country ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: 430,
                left: 190,
                child: Container(
                  child: Row(children: [
                    Text(
                      '                   Palestine ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF777A91),
                      ),
                    )
                  ]),
                ),
              ),

              //////////////
              ///
              ///
              ///
              ///
              Positioned(
                top: 480,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 480,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/lang.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 490,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'Language ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: 500,
                left: 190,
                child: Container(
                  child: Row(children: [
                    Text(
                      '                      English ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF777A91),
                      ),
                    )
                  ]),
                ),
              ),

              /////////
              ///
              ///
              ///
              ///
              Positioned(
                top: 520,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 520,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/noti.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 530,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'Notifications ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              Positioned(
                top: 540,
                left: 190,
                child: Container(
                  child: Row(children: [
                    Text(
                      '                      On ',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xFF777A91),
                      ),
                    )
                  ]),
                ),
              ),
              //////////
              ///
              ///
              ///
              Positioned(
                top: 594,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 590,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/ies.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 603,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'Privacy Policy ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),

              /////////
              ///
              ///
              ///
              Positioned(
                top: 635,
                left: 330,
                child: Container(
                    child: IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Color(0xFF2E3046),
                    size: 30,
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 630,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/book.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 644,
                left: 75,
                child: InkWell(
                  onTap: () {
                    Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => Protein_Bar()));
                  },
                  child: Positioned(
                    child: Container(
                      color: Color(0xFF26273B),
                      child: Row(children: [
                        Text(
                          'Terms of Use ',
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        )
                      ]),
                    ),
                  ),
                ),
              ),

              /////////
              ///
              ///
              ///

              Positioned(
                top: 700,
                left: 24,
                child: Container(
                    child: IconButton(
                  icon: Image.asset(
                    'images/back.png',
                  ),
                  onPressed: () {},
                )),
              ),
              Positioned(
                top: 714,
                left: 75,
                child: Container(
                  color: Color(0xFF26273B),
                  child: Row(children: [
                    Text(
                      'Terms of Use ',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ]),
                ),
              ),
              //////////////////////////////////////////////
              ///
              ///
              ///
              ///
              ///
              ///
              Positioned(
                top: 750,
                child: Container(
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
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Messages()));
                          },
                          icon: Image.asset('images/meesg.png'),
                          color: Color(0xff646781),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 43),
                        child: IconButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => Godd_mornning()));
                          },
                          icon: Image.asset(
                            "images/hoo.png",
                          ),
                        ),
                      ),
                      Container(
                          margin: EdgeInsets.only(left: 300),
                          child: IconButton(
                            onPressed: () {
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => Settings()));
                            },
                            icon: Image.asset(
                              "images/red.png",
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
              ),

              //   top: 371,
              //   right: 54,
              //   child: Container(
              //     child: Text(
              //       '8793 ',
              //       style: TextStyle(fontSize: 20, color: Colors.white),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 378,
              //   right: 30,
              //   child: Container(
              //     child: Text(
              //       'call ',
              //       style: TextStyle(fontSize: 12, color: Colors.white),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 378,
              //   left: 67,
              //   child: Container(
              //     child: Text(
              //       'hr ',
              //       style: TextStyle(fontSize: 12, color: Colors.white),
              //     ),
              //   ),
              // ),
              // Positioned(
              //   top: 462,
              //   left: 17,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage("images/Gyms.png"),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //     width: 164,
              //     height: 88,
              //   ),
              // ),
              // Positioned(
              //   top: 462,
              //   left: 194,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage("images/Trainers.png"),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //     width: 164,
              //     height: 88,
              //   ),
              // ),
              // Positioned(
              //   top: 563,
              //   left: 194,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage("images/e-Commerce.png"),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //     width: 164,
              //     height: 88,
              //   ),
              // ),
              // Positioned(
              //   top: 563,
              //   left: 17,
              //   child: Container(
              //     decoration: BoxDecoration(
              //       image: DecorationImage(
              //         image: AssetImage("images/Heath.png"),
              //         fit: BoxFit.cover,
              //       ),
              //     ),
              //     width: 164,
              //     height: 88,
              //   ),
              // ),
            ],
          ),
        ),
      ]),
    );
  }
}
