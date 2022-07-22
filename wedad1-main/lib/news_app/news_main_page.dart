import 'dart:developer';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:wedad_application/news_app/data/fake_response.dart';
import 'package:wedad_application/news_app/models/news_model.dart';
import 'package:wedad_application/news_app/pages/news_details.dart';
import 'package:wedad_application/news_app/pages/news_home.dart';

class MainPage extends StatefulWidget{
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
   AllNewsModel allNewsModel = AllNewsModel();

   PageController pageController = PageController();
NewsModel? newsModel;
setNewsModel(NewsModel x){
  this.newsModel = x;
  setState(() {
    
  });
  pageController.animateToPage(1, duration: Duration(microseconds: 100), curve: Curves.linear);
}
 

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     appBar: AppBar(
       backgroundColor: Colors.black54,
       title: Text('News App'),
    
      
     ),
     body: Center(child: PageView(
       controller: pageController,
       children: [
         NewsHome(allNewsModel,setNewsModel),
         NewsDetails(newsModel??allNewsModel.articles!.first)
       ],
     ),),
   );
  }
}