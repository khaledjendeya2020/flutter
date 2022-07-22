import 'package:flutter/material.dart';
import 'package:mid_term/data/dummy.dart';
import 'package:mid_term/models/product.dart';
import 'package:mid_term/pages/add_new_product.dart';
import 'package:mid_term/pages/favorite.dart';
import 'package:mid_term/pages/news_details.dart';
import 'package:mid_term/pages/news_widget.dart';
import 'package:mid_term/provider.dart';
import '../models/news_model.dart';
import 'package:provider/provider.dart';

class HomeWidget extends StatelessWidget {
  // AllNewsModel allNewsModel;
  // Function function;
  // HomeWidget(this.allNewsModel, this.function);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'khaled',
          style: TextStyle(fontSize: 20, color: Colors.amber),
        ),
        actions: [
          Row(
            children: [
              // IconButton(
              //     onPressed: () {
              //       Navigator.of(context)
              //           .push(MaterialPageRoute(builder: (context) {
              //         return FavoriteWidget(newsModel, allNewsModel);
              //       }));
              //     },
              //     icon: Icon(Icons.favorite)),
              IconButton(
                  onPressed: () {
                    Navigator.of(context)
                        .push(MaterialPageRoute(builder: (context) {
                      return AddNewProduct();
                    }));
                  },
                  icon: Icon(Icons.add)),
            ],
          )
        ],
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: Provider.of<ProuductProvider>(context).allProducts.length,
          itemBuilder: (context, index) {
            return InkWell(
              // onTap: () {
              //   Provider.of<ProuductProvider>(context).setNewsModel(
              //       Provider.of<ProuductProvider>(context)
              //           .allNewsModel
              //           .articles![index] ?? Provider.of<ProuductProvider>(context)
              //           .allNewsModel!
              //           .articles![index]  );
              // },
              // child: NewsWidget(Provider.of<ProuductProvider>(context)
              //     .allNewsModel!
              //     .articles![index]),
            );
          }),
    );
  }
}

class mainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: PageView(
      controller: Provider.of<ProuductProvider>(context).pageController,
      children: [
        HomeWidget(),
        /* NewsDetails(Provider.of<ProuductProvider>(context)
                 .allNewsModel
                 .articles
                 .first ??
       Provider.of<ProuductProvider>(context).articles!.first) */     
      ],
    )));
  }
}
