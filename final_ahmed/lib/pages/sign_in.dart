import 'package:final_ahmed/pages/messages.dart';
import 'package:flutter/material.dart';

class Sign_In extends StatelessWidget {
  const Sign_In({Key? key}) : super(key: key);

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
          top: 90,
          left: 40,
          child: Container(
            child: Text(
              "Sing in",
              style: TextStyle(color: Colors.white, fontSize: 26),
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
                        hintText: "Email,",
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
                InkWell(onTap: (){Navigator.of(context).push(MaterialPageRoute(builder: (context) => Messages()));
},
                  child: Container(
                    margin: EdgeInsets.symmetric(vertical: 22),
                    child: Center(
                      child: Text(
                        'Login  ',
                        textScaleFactor: 1,
                        style:
                            TextStyle(color: Color.fromARGB(255, 255, 255, 255)),
                      ),
                    ),
                    decoration: BoxDecoration(
                      color: Color(0xffEC6454),
                      borderRadius: BorderRadius.all(Radius.circular(8)),
                    ),
                    width: 300,
                    height: 48,
                  ),
                ),
                Positioned(
                    top: 250,
                    // left: 40,
                    child: Container(
                      child: Text(
                        "Forget Password?",
                        style: TextStyle(color: Colors.white, fontSize: 14),
                      ),
                    )),
              ],
            ),
          ))
      /*
      Positioned(
        bottom: 360,
        left: 100,hin
        child: Container(
          alignment: Alignment.lerp(Alignment.topCenter, Alignment.center, .9),
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
      */
    ]));
  }
}
