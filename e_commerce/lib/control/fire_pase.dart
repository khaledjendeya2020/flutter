import 'package:e_commerce/pages/auth/test.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Auth {
  Auth._();
  static Auth auth = Auth._();
  regester(String emil, String pass, BuildContext context) async {
    try {
      final dynamic credential =
          await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: emil,
        password: pass,
      );
      print('asdasd');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'weak-password') {
        print('The password provided is too weak.');
      } else {
        Navigator.of(context)
            .pushReplacement(MaterialPageRoute(builder: (context) {
          return test();
        }));
      }
    } catch (e) {
      print(e);
    }
  }

  login(String email, String pass) async {
    //sing in
    try {
      final credential = await FirebaseAuth.instance
          .signInWithEmailAndPassword(email: email, password: pass);
      print('asdkasldaskd');
    } on FirebaseAuthException catch (e) {
      if (e.code == 'user-not-found') {
        print('No user found for that email.');
      } else if (e.code == 'wrong-password') {
        print('Wrong password provided for that user.');
      }
    }
  }
}
