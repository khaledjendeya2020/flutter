import 'package:flutter/material.dart';
import 'package:wedad_application/instegram_clone/dummy_data.dart';
import 'package:wedad_application/instegram_clone/instegram_widget.dart';

class CustomHomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(child: Container(child: ListView.builder(
     itemCount: posts.length,
     itemBuilder:(context,index){
       return InstegramWidget(posts[index]);
     }),),);
   
  }
}