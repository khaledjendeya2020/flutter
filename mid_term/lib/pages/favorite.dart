// import 'package:flutter/material.dart';
// import 'package:mid_term/models/news_model.dart';
// import 'package:mid_term/pages/add_new_product.dart';
// import 'package:mid_term/pages/news_widget.dart';
// import 'package:mid_term/provider.dart';
// import 'package:provider/provider.dart';

// class FavoriteWidget extends StatelessWidget {
//   NewsModel? newsModel;
//   AllNewsModel? allNewsModel;
//   FavoriteWidget(this.newsModel, this.allNewsModel);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: Text('Your Favourit products'),
//           actions: [
//             Row(children: [
//               // IconButton(
//               //     onPressed: () {
//               //       Navigator.of(context)
//               //           .push(MaterialPageRoute(builder: (context) {
//               //         return FavoriteWidget(allNewsModel);
//               //       }));
//               //     },
//               //     icon: Icon(Icons.favorite)),
//               IconButton(
//                   onPressed: () {
//                     Navigator.of(context)
//                         .push(MaterialPageRoute(builder: (context) {
//                       return AddNewProduct();
//                     }));
//                   },
//                   icon: Icon(Icons.add)),
//             ])
//           ],
//         ),
//         body: ListView.builder(
//             padding: EdgeInsets.all(10),
//             itemCount: Provider.of<ProuductProvider>(context, listen: false)
//                 .favoriteProduct
//                 .length,
//             itemBuilder: (context, index) {
//               return Card(
//                 child: InkWell(
//                   onTap: () {},
//                   child: NewsWidget(
//                     Provider.of<ProuductProvider>(context, listen: false)
//                         .favoriteProduct[index],
//                     //   Provider.of<ProuductProvider>(context).favoriteProduct,
//                   ),
//                 ),
//               );
//             }));
//   }
// }
