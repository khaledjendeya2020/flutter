import 'package:e_commerce/pages/auth/control_auth.dart';
import 'package:e_commerce/splach.dart';
import 'package:flutter/material.dart';
import 'package:e_commerce/models/providers_products.dart';
import 'package:provider/provider.dart';

// Import the firebase_core plugin
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(ChangeNotifierProvider(
      create: (context) => ProductProivder(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ProductProivder>(context).isLight
            ? ThemeData.dark()
            : ThemeData.light(),
        debugShowCheckedModeBanner: false,
        home: Splash2());
  }
}
