import 'package:e_commerce/main.dart';
import 'package:e_commerce/pages/auth/control_auth.dart';
import 'package:e_commerce/pages/auth/login_in.dart';
import 'package:e_commerce/pages/auth/sign_up.dart';
import 'package:e_commerce/pages/auth/test.dart';
import 'package:e_commerce/view/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Splash Screen',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Splash2(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splash2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
        seconds: 1,
        navigateAfterSeconds:
            FireAuthHelper.fireAuthHelper.getCurrentUser() == null
                ? Sign_up()
                : NewsHome(),
        title: new Text('Welcome In SplashScreen'),
        image: new Image.asset(
          'images/Content.png',
        ),
        backgroundColor: Colors.white,
        imageBackground: AssetImage(
          'images/Content.png',
        ),
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.red);
  }
}
