// import 'package:flutter/material.dart';
// import 'package:getwidget/getwidget.dart';
// import 'package:proudcts_app/models/providers_products.dart';
// import 'package:proudcts_app/models/providers_products.dart';
// import 'package:provider/provider.dart';

// class HomeWidget extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         body: Container(
//       margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//       child: ClipRRect(
//         borderRadius: BorderRadius.circular(15),
//         child: Stack(
//           children: [
//             Container(
//               color: Colors.black.withOpacity(0.2),
//               height: 300,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Image.network(
//                     Provider.of<ProductProivder>(context, listen: false)
//                         .Allproducts[
//                             Provider.of<ProductProivder>(context, listen: false)
//                                 .Allproducts
//                                 .length]
//                         .image,
//                     height: 200,
//                     width: double.infinity,
//                     fit: BoxFit.cover,
//                     errorBuilder: (c, x, y) {
//                       return Image.network(
//                           'https://th.bing.com/th/id/OIP.MXyMqcEJ6Se0SCWcYCKZTQHaEK?pid=ImgDet&rs=1');
//                     },
//                   ),

//                   Container(
//                     padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
//                     child: 
//                     Text(
//                       Provider.of<ProductProivder>(context, listen: false)
//                           .Allproducts[Provider.of<ProductProivder>(context,
//                                   listen: false)
//                               .Allproducts
//                               .length]
//                           .title,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: TextStyle(
//                         fontSize: 18,
//                       ),
//                     ),
//                   ),
//                   // Container(
//                   //   padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3),
//                   //   child: Text('Written by: '+ (widget.newsModel.author??'Not Defined'),
//                   //   style: TextStyle(
//                   //     fontSize: 16,
//                   //     fontWeight: FontWeight.bold
//                   //   ),
//                   //   ),
//                   // ),
//                 ],
//               ),
//             ),
//             Container(
//               margin: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
//               child: Align(
//                   alignment: Alignment.topRight,
//                   child: IconButton(
//                     padding: EdgeInsets.symmetric(horizontal: 5),
//                     onPressed: () {
//                       Provider.of<ProductProivder>(context).favariteP;
//                     },
//                     icon: Icon(Icons.favorite,
//                         size: 50,
//                         color: Provider.of<ProductProivder>(context,listen: false)
//                                 .Allproducts[5]
//                                 .isFavourite
//                             ? Colors.red
//                             : Colors.white),
//                   )),
//             )
//           ],
//         ),
//       ),
//     ));
//   }
// }
