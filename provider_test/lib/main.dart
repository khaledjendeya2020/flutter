import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_test/e-commerce-app/provider/product_provider.dart';
import 'package:provider_test/learn_app/provider_folder/bottom_nav_bar_provider.dart';
import 'package:provider_test/learn_app/provider_folder/pizza.dart';
import 'learn_app/screens/home_screen.dart';

void main() {
  runApp(
    MultiProvider(providers:[
      ChangeNotifierProvider<ProductProivder>(create: (context) => ProductProivder()),],child: MyApp(),)
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    ProductProivder p = ProductProivder();
    final products = p.products;
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(),
        body: ListView.builder(itemBuilder: (ctx, i) => Text(Provider.of<ProductProivder>(context,listen: false).products[i].title),itemCount: products.length,),
      ),
    );
  }
}
