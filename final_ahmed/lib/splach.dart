import 'package:final_ahmed/pages/good_mornning.dart';
import 'package:final_ahmed/pages/home.dart';
import 'package:final_ahmed/pages/protein_bar.dart';
import 'package:final_ahmed/pages/settings.dart';
import 'package:final_ahmed/pages/sign_in.dart';
import 'package:final_ahmed/pages/messages.dart';

import 'package:final_ahmed/pages/sing_up.dart';
import 'package:final_ahmed/pages/subscriptions.dart';
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
        seconds: 3,
        navigateAfterSeconds: Home(),
        backgroundColor: Colors.white,
        imageBackground: AssetImage(
          'images/ah1.jpeg',
        ),
        styleTextUnderTheLoader: new TextStyle(),
        loaderColor: Colors.red);
  }
}
