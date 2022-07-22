
import 'package:flutter/material.dart';
import 'package:wedad_application/news_app/models/news_model.dart';

class NewsDetails extends StatelessWidget{
  NewsModel newsModel;
NewsDetails(this.newsModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Column(children: [
     Image.network(newsModel.urlToImage!, height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
              errorBuilder: (c,x,y){
                return Image.network('https://th.bing.com/th/id/OIP.MXyMqcEJ6Se0SCWcYCKZTQHaEK?pid=ImgDet&rs=1');
              },),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 5,vertical: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(newsModel.title!,style: TextStyle(fontWeight: FontWeight.bold,fontSize: 18),),
                    Text(newsModel.description!,style: TextStyle(fontSize: 16)),
                    Text(newsModel.content!,style: TextStyle(fontSize: 16)),
                    
                  ],
                ),
              ),
   ],
   
   );
  }
}