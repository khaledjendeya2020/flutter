import 'dart:math';
import 'package:e_commerce/main.dart';
import 'package:e_commerce/view/pages/home_page.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:e_commerce/pages/auth/test.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../control/fire_pase.dart';

class Sign_up extends StatefulWidget {
  @override
  State<Sign_up> createState() => _Sign_upState();
}

class _Sign_upState extends State<Sign_up> {
  TextEditingController emil = TextEditingController();

  TextEditingController pass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        top: true,
        child: Scaffold(
          body: SingleChildScrollView(
            child: Column(children: [
              Card(
                  elevation: 6,
                  child: Column(children: [
                    SizedBox(height: 120),
                    Column(
                      children: [
                        Container(
                            margin: EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.white,
                                width: 5,
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    Text(
                                      '  Sign Up',
                                      style: TextStyle(fontSize: 35),
                                    ),
                                  ],
                                ),
                                Container(
                                  child: SizedBox(height: 50),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '       Name',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(17),
                                  child: TextField(
                                    maxLines: 1,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '       Emil',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(17),
                                  child: TextField(
                                    controller: emil,
                                    maxLines: 1,
                                  ),
                                ),
                                Row(
                                  children: [
                                    Text(
                                      '       Password',
                                      style: TextStyle(color: Colors.grey),
                                    ),
                                  ],
                                ),
                                Container(
                                  padding: EdgeInsets.all(17),
                                  child: TextField(
                                    controller: pass,
                                    obscureText: true,
                                    maxLines: 1,
                                  ),
                                ),
                                SizedBox(height: 10),
                                SizedBox(
                                  height: 60,
                                  width: 350,
                                  child: Container(
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 30, vertical: 20),
                                        textStyle: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold),
                                        primary:
                                            Color(0xff100C569), // background
                                        onPrimary: Colors.white, // foreground
                                      ),
                                      onPressed: () {
                                        Auth.auth
                                            .regester(emil.text, pass.text,context);
                                         print('sdgklsdfkl');
                                        Navigator.of(context).pushReplacement(
                                            MaterialPageRoute(
                                                builder: (context) {
                                          return NewsHome();

                                        }));
                                        Auth.auth.login(
                                            emil.text.trim(), pass.text.trim());
                                      },
                                      child: Text('SIGN IN'),

                                      // shape: new RoundedRectangleBorder(
                                      //   borderRadius: new BorderRadius.circular(20),
                                      // ),
                                      // color: Color(0xff100C569),
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ],
                    )
                  ])),
            ]),
          ),
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          // ),
        ));
  }
}
