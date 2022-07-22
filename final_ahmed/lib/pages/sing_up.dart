import 'package:final_ahmed/pages/messages.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatelessWidget {
  const Sign_Up({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
      child: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/dark_sign_in.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
            top: 90,
            left: 40,
            child: Container(
              child: Text(
                "Sing up",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 26,
                    fontWeight: FontWeight.bold),
              ),
            )),
        Positioned(
            top: 200,
            left: 40,
            child: Container(
              child: Column(
                children: [
                  Container(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Name",
                          hintStyle: TextStyle(color: Color(0xff646781)),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 18),
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Email",
                          hintStyle: TextStyle(color: Color(0xff646781)),
                        ),
                      )),
                  Container(
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Mopile Number",
                          hintStyle: TextStyle(color: Color(0xff646781)),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 22),
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Paasword",
                          hintStyle: TextStyle(color: Color(0xff646781)),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "Country",
                          hintStyle: TextStyle(color: Color(0xff646781)),
                        ),
                      )),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      width: 300,
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: "City",
                          hintStyle: TextStyle(color: Color(0xff646781)),
                        ),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      margin: EdgeInsets.symmetric(vertical: 10),
                      child: Row(
                        children: [
                          Text(
                            'By creating account, you agree to Fitclub ',
                            textScaleFactor: 1,
                            style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 14),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Text(
                              'Privacy',
                              style: TextStyle(
                                  color: Color(0xffDF4C3B), fontSize: 14),
                            ),
                          )
                        ],
                      )),
                  Row(
                    children: [
                      InkWell(
                        onTap: () {},
                        child: Text(
                          'Policy ',
                          style:
                              TextStyle(color: Color(0xffDF4C3B), fontSize: 14),
                        ),
                      ),
                      Text(
                        'and ',
                        style: TextStyle(
                            color: Color.fromARGB(255, 255, 255, 255),
                            fontSize: 14),
                      ),
                      Text(
                        'Terms of Use ',
                        style:
                            TextStyle(color: Color(0xffDF4C3B), fontSize: 14),
                      ),
                    ],
                  )
                ],
              ),
            )),
        Positioned(
          top: 690,
          left: 30,
          child: InkWell(
            onTap: () {
              Navigator.of(context)
                  .push(MaterialPageRoute(builder: (context) => Messages()));
            },
            child: Positioned(
                top: 690,
                left: 30,
                child: Stack(
                  children: [
                    Container(child: Image.asset('images/ret.png')),
                    Positioned(
                      top: 15,
                      left: 125,
                      child: Container(
                          child: Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 15,
                          color: Colors.white,
                        ),
                      )),
                    )
                  ],
                )),
          ),
        )
      ]),
    ));
  }
}
