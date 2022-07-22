import 'package:mid_term/data/fake_response.dart';

class AllNewsModel {
  List<NewsModel>? articles;

  AllNewsModel() {
    List<Map> data = newsData['articles'];
    List<NewsModel> results = [];
    for (int i = 0; i < data.length; i++) {
      NewsModel newsModel = NewsModel(data[i]);
      results.add(newsModel);
    }
    this.articles = results;
  }
}

class NewsModel {
  dynamic? id;
  String? title;
  dynamic? price;
  String? description;
  String? category;
  String? image;
  // dynamic? rating;
  bool isFavourite = false;

  NewsModel(dynamic map) {
    this.id = map['id'];
    this.title = map['title'];
    this.price = map['price'];
    this.description = map['description'];
    this.category = map['category'];
    this.image = map['image'];
    // this.rating = map['rating'];
    this.isFavourite = false;
  }

  get articles => null;
}
