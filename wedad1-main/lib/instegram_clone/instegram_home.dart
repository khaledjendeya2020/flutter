
import 'package:flutter/material.dart';
import 'package:wedad_application/instegram_clone/dummy_data.dart';
import 'package:wedad_application/instegram_clone/instegram_widget.dart';
import 'package:wedad_application/instegram_clone/pages/favourite_page.dart';
import 'package:wedad_application/instegram_clone/pages/home_page.dart';
import 'package:wedad_application/instegram_clone/user_widget.dart';

class InstegramHome extends StatefulWidget{
  @override
  State<InstegramHome> createState() => _InstegramHomeState();
}

class _InstegramHomeState extends State<InstegramHome> {
  int pageIndex = 0;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Scaffold(
    appBar: AppBar(
       title: Image.asset('assets/images/logo.png',
       color: Colors.white,
       height: 40,
       width: 150,
       ),
       backgroundColor: Colors.black54,),
   body: pageIndex==0?CustomHomeScreen():FavouriteScreen(),
   
    bottomNavigationBar: BottomNavigationBar(
      onTap: (index){
       this.pageIndex = index;
       setState(() {
         
       });
      },
      currentIndex: pageIndex,
      items: [
     BottomNavigationBarItem(icon: Icon(Icons.home),label: ''),
      BottomNavigationBarItem(icon: Icon(Icons.favorite),label: '')
   ],),
   );
  }
}