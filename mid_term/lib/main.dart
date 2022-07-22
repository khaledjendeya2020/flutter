import 'package:flutter/material.dart';
import 'package:mid_term/pages/add_new_product.dart';
import 'package:mid_term/pages/home_page.dart';
import 'package:mid_term/provider.dart';
import 'package:mid_term/widgets/all_new_widget.dart';

import 'models/news_model.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ProuductProvider(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      home: mainPage(),
    ),
  ));
}
