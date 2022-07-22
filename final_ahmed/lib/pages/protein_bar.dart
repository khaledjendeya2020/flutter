import 'package:flutter/material.dart';

class Protein_Bar extends StatelessWidget {
  const Protein_Bar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(children: [
      Container(
        // width: double.infinity,
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
                  height: 240,
                  width: 400,
                  child: Container(
                      child: Stack(children: [
                    Container(
                        child: Container(
                            decoration: BoxDecoration(
                                image: DecorationImage(
                                    scale: .1,
                                    image: AssetImage("images/food.png"),
                                    fit: BoxFit.fill)))),
                  ])),
                ),
              ],
            ),
          ),
        ],
      ),
      Stack(children: [
        Positioned(
          top: 240,
          right: -2,
          child: SizedBox(
            height: 240,
            width: 400,
            child: Container(
                child: Stack(children: [
              Container(
                  child: Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              scale: .1,
                              image: AssetImage("images/rect.png"),
                              fit: BoxFit.fill)))),
              Positioned(
                  top: 22,
                  left: 156,
                  child: Container(
                    child: Image.asset('images/oval6.png'),
                  )),
              Positioned(
                  top: 92,
                  left: 134,
                  child: Container(
                    child: Text('Protein Bar',
                        style: TextStyle(fontSize: 22, color: Colors.white)),
                  )),
              Positioned(
                  top: 138,
                  left: 152,
                  child: Container(
                    child: Image.asset('images/stars.png'),
                  )),
              Positioned(
                  top: 165,
                  left: 72,
                  child: Container(
                    child: Text('    +972 594 041 098',
                        style:
                            TextStyle(fontSize: 12, color: Color(0xff777A91))),
                  )),
              Positioned(
                  top: 156.5,
                  left: 51.5,
                  child: Container(
                    child: Image.asset('images/phon.png'),
                  )),
              Positioned(
                  top: 165,
                  left: 217,
                  child: Container(
                    child: Text('           Al Muruj, Riyadh',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff777A91))),
                  )),
              Positioned(
                  top: 162,
                  left: 230,
                  child: Container(
                    child: Image.asset('images/location.png'),
                  )),
              Positioned(
                  top: 193,
                  left: 22,
                  child: Container(
                    child: Text(
                        '           There are many variations of passages of Lorem ',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff777A91))),
                  )),
              Positioned(
                  top: 214,
                  left: 145,
                  child: Container(
                    child: Text('Ipsum available. ',
                        style:
                            TextStyle(fontSize: 14, color: Color(0xff777A91))),
                  )),
            ])),
          ),
        ),

        // Stack(
        //   children: [
        // Positioned(
        //     // top: 262,
        //     // left: 165,
        //     // top: 300,
        //     // child: Container(child: Image.asset('images/oval6.png'))
        //     ),
        // Positioned(child: Container(child: Text('Restaurant Services',),))]
      ]),
      Positioned(
          top: 509,
          left: 16,
          child: Container(
            child: Text(
              'Restaurant Services',
              style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                  color: Colors.white), //images/rectangle3.png
            ),
          )),
      Positioned(
          top: 542,
          left: 16,
          child: Stack(
            children: [
              Container(
                  child: Image.asset(
                'images/rectangle3.png',
              )),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                    child: Text(
                  'Weight Loss',
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
              Positioned(
                left: 15,
                bottom: 15,
                child: Container(
                    child: Text(
                  'Muscle your way towards confidence.',
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Color(0xff777A91)),
                )),
              )
            ],
          )),
      Positioned(
          top: 625,
          left: 16,
          child: Stack(
            children: [
              Container(
                  child: Image.asset(
                'images/rectangle3.png',
              )),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                    child: Text(
                  'Build Muscle',
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
              Positioned(
                left: 15,
                bottom: 15,
                child: Container(
                    child: Text(
                  'Muscle your way towards confidence.',
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Color(0xff777A91)),
                )),
              )
            ],
          )),
      Positioned(
          top: 707,
          left: 16,
          child: Stack(
            children: [
              Container(
                  child: Image.asset(
                'images/rectangle3.png',
              )),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                    child: Text(
                  'Increase Energy',
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
              Positioned(
                left: 15,
                bottom: 15,
                child: Container(
                    child: Text(
                  'Muscle your way towards confidence.',
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Color(0xff777A91)),
                )),
              )
            ],
          )),
      Positioned(
          top: 789,
          left: 16,
          child: Stack(
            children: [
              Container(
                  child: Image.asset(
                'images/rectangle3.png',
              )),
              Positioned(
                top: 15,
                left: 15,
                child: Container(
                    child: Text(
                  'Dry Muscles',
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Colors.white),
                )),
              ),
              Positioned(
                left: 15,
                bottom: 15,
                child: Container(
                    child: Text(
                  'Muscle your way towards confidence.',
                  style: TextStyle(
                      fontSize: 16,
                      // fontWeight: FontWeight.bold,
                      color: Color(0xff777A91)),
                )),
              )
            ],
          )),
    ]));
  }
}
