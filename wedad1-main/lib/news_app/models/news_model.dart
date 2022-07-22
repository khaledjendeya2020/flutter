import 'package:wedad_application/news_app/data/fake_response.dart';

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
  String? author;
  String? title;
  String? description;
  String? url;
  String? urlToImage;
  String? publishedAt;
  String? content;
  bool isFavourite = false;

  NewsModel(Map map) {
    this.author = map['author'];
    this.title = map['title'];
    this.description = map['description'];
    this.url = map['url'];
    this.urlToImage = map['urlToImage'];
    this.publishedAt = map['publishedAt'];
    this.content = map['content'];
  }
}
