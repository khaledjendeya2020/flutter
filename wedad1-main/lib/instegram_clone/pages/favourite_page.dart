import 'package:flutter/material.dart';
import 'package:wedad_application/instegram_clone/dummy_data.dart';
import 'package:wedad_application/instegram_clone/instegram_widget.dart';

class FavouriteScreen extends StatefulWidget{
  @override
  State<FavouriteScreen> createState() => _FavouriteScreenState();
}

class _FavouriteScreenState extends State<FavouriteScreen> {
  rebuildYaKhaled(){
    setState(() {
      
    });
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(child: Container(child: ListView.builder(
     itemCount: posts.where((element) => element.isFavourite).length,
     itemBuilder:(context,index){
       return InstegramWidget(posts.where((element) => element.isFavourite).toList()[index],rebuildYaKhaled);
     }),),);
   
  }
}