import 'package:api/response/get_all.dart';
import 'package:flutter/cupertino.dart';

class Provider extends ChangeNotifier {
  NewsProvider() {
    getAllNews();
  }

  List<GetAllProductsFromJson> products = [];
  getAllNews() {}

  addNewToDatabase() async {
    GetAllProductsFromJson getAllProductsFromJson = GetAllProductsFromJson(
        id: '',
        title: '',
        price: '',
        description: '',
        category: '',
        image: '',
        rating: '');
    getAllNews();
  }

  deleteNewsFromDatabase(NewsModel newsModel) async {
    getAllNews();
  }
}

class NewsModel {
}
