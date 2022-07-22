// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/khaled.dart';
// import 'package:flutter_application_2/pages/page2.dart';
// import 'package:provider/provider.dart';

// class Page1 extends StatelessWidget{
//   static final String routeName = 'page1';

  
//   @override
//   Widget build(BuildContext context) {
 
//     // TODO: implement build
//    return Scaffold(appBar: AppBar(title: Text('Page1'),
   
//    ),body: Column(
  
//      children: [
//         SwitchListTile(value: Provider.of<Khaled>(context).isLight,
//      onChanged: (x){
//       Provider.of<Khaled>(context,listen: false).changeMode();
//     },title: Text('Mode'),
//     subtitle: Text(Provider.of<Khaled>(context).isLight?'Light':'Dark'),)
   
     
//    ],));
//   }
// }