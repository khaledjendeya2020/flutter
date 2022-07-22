// import 'package:flutter/material.dart';
// import 'package:flutter_application_2/khaled.dart';
// import 'package:provider/provider.dart';

// class Page2 extends StatefulWidget{
//   String x;
//   Page2(this.x);

//   @override
//   State<Page2> createState() => _Page2State();
// }

// class _Page2State extends State<Page2> {
// String? name;
//   @override
//   void initState() {
//     // TODO: implement initState
//     super.initState();
//     Future.delayed(Duration(seconds: 1)).then((value) =>  name =  ModalRoute.of(context)?.settings.arguments as String);
//     setState(() {
      
//     });
//   }
//   @override
//   Widget build(BuildContext context) {
  
//    return Scaffold(appBar: AppBar(
//      automaticallyImplyLeading: false,
//      title: Text(name??'not defined'),
   
//    ),body: Center(child: RaisedButton(onPressed: (){
//       Provider.of<Khaled>(context,listen: false).name = 'ziad almasry';
  
//    }),),);
//   }
// }