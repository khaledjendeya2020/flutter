import 'package:final_ahmed/pages/sign_in.dart';
import 'package:final_ahmed/pages/sing_up.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("images/ah2.png"),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 360,
          left: 100,
          child: Container(
            alignment:
                Alignment.lerp(Alignment.topCenter, Alignment.center, .9),
            width: 163.64,
            height: 119.17,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage("images/Logo.png"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 110,
          left: 65,
          child: Container(
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Sign_In()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Sign in',
                    textScaleFactor: 1,
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xffEC6454),
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                width: 275,
                height: 48,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 50,
          left: 65,
          child: Container(
            child: InkWell(
              onTap: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => Sign_Up()));
              },
              child: Container(
                child: Center(
                  child: Text(
                    'Sign Up',
                    textScaleFactor: 1,
                    style: TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                  ),
                ),
                decoration: BoxDecoration(
                  color: Color(0xff2E3046),
                  boxShadow: [
                    BoxShadow(color: Color(0xffFEFEFE), spreadRadius: 1),
                  ],
                  borderRadius: BorderRadius.all(Radius.circular(8)),
                ),
                width: 275,
                height: 48,
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
