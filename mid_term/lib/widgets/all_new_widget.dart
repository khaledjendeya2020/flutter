import 'package:flutter/material.dart';
import 'package:mid_term/models/news_model.dart';

class AllNewWidget extends StatelessWidget {
  AllNewsModel allNewsModel = AllNewsModel();

  Widget build(BuildContext context) {
    int leng = allNewsModel.articles!.length;

    return Scaffold(
      body: Text('$leng'),
    );
  }
}
