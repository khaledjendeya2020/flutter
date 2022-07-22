import 'package:firs_fire_base/FB/logIn.dart';
import 'package:firs_fire_base/storege_f_b.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runApp(const MyApp());
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: Scaffold(
            body: Scaffold(body: Center(child: RaisedButton(onPressed: () {
          FirestoreHelper.firestoreHelper.getAllMap();
        })))));
  }
}
