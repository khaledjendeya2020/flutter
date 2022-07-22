import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:response/page1.dart';
import 'package:response/page2.dart';

void main() {
  runApp(MaterialApp(routes: {
    'page1': (context) {
      return page1();
    },
    'page2': (context) {
      return page2();
    }
  }, home: page1()));
}
