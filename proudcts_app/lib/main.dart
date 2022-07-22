import 'package:flutter/material.dart';
import 'package:proudcts_app/models/providers_products.dart';
import 'package:proudcts_app/view/pages/home_page.dart';
import 'package:proudcts_app/view/widgets/home_widget.dart';
import 'package:provider/provider.dart';
import 'view/pages/favarite_page.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ProductProivder(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: Provider.of<ProductProivder>(context).isLight
            ? ThemeData.light()
            : ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        home: NewsHome());
  }
}
