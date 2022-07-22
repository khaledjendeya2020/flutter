import 'dart:math';
import 'package:e_commerce/pages/auth/sign_up.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';

import 'package:flutter/material.dart';

import '../../control/fire_pase.dart';

class Regester extends StatefulWidget {
  @override
  State<Regester> createState() => _RegesterState();
}

class _RegesterState extends State<Regester> {
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
                  child: Column(children: [
                SizedBox(height: 120),
                Column(
                  children: [
                    Container(
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
                                  '  Welcome,',
                                  style: TextStyle(fontSize: 35),
                                ),
                                Text(
                                  '                                Sign',
                                  textAlign: TextAlign.right,
                                  style: TextStyle(
                                      color: Color(0xff100C569), fontSize: 20),
                                ),
                              ],
                            ),
                            Container(
                              child: Row(
                                children: [
                                  Text(
                                    '       Sign in to Continu',
                                    textAlign: TextAlign.left,
                                    style: TextStyle(color: Colors.grey),
                                  ),
                                ],
                              ),
                              // alignment: Alignment.lerp(
                              //     Alignment.centerLeft, Alignment.bottomRight, .4),
                            ),
                            Container(
                              child: SizedBox(height: 50),
                            ),
                            Row(
                              children: [
                                Text(
                                  '       Emile',
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
                            Text(
                              '                                                                                                                 forgot password?',
                              textAlign: TextAlign.right,
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 10,
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
                                    primary: Color(0xff100C569), // background
                                    onPrimary: Colors.white, // foreground
                                  ),
                                  onPressed: () {
                                    Auth.auth.login(emil.text, pass.text);
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
              SizedBox(
                height: 20,
              ),
              Container(
                child: Row(
                  children: [
                    Text(
                      '                                           -OR-                  ',
                      style: TextStyle(fontSize: 16),
                    )
                  ],
                ),
              )
            ]),
          ),
          // appBar: AppBar(
          //   backgroundColor: Colors.white,
          // ),
        ));
  }
}
