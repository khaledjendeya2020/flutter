import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:mid_term/models/news_model.dart';
import 'package:mid_term/models/product.dart';

class ProuductProvider extends ChangeNotifier {
  AllNewsModel? allNewsModel;
  NewsModel? newsModel;
  bool isComplete = false;
  changeIsComplete(value) {
    this.isComplete = value;
    notifyListeners();
  }

  late List<NewsModel> allProducts = allNewsModel!.articles!;
  late List<NewsModel> favoriteProduct =
      allProducts.where((element) => element.isFavourite).toList();
  late List<NewsModel> notFavoriteProduct =
      allProducts.where((element) => !element.isFavourite).toList();
  fillAllLists() {
    favoriteProduct =
        allProducts.where((element) => element.isFavourite).toList();
    notFavoriteProduct =
        allProducts.where((element) => !element.isFavourite).toList();
    notifyListeners();
  }

  addNewProduct(NewsModel newsModel) {
    allProducts.add(newsModel);
    fillAllLists();
  }
    PageController pageController = PageController();

    setNewsModel(NewsModel x) {
    this.newsModel = x;
  
    pageController.animateToPage(1,
        duration: Duration(microseconds: 100), curve: Curves.linear);
          fillAllLists();
  }

  deleteProduct(NewsModel newsModel) {
    allProducts.remove(newsModel);
    fillAllLists();
  }

  updateProduct(NewsModel newsModel) {
    int index = allProducts.indexOf(newsModel);
    allProducts[index].isFavourite = !allProducts[index].isFavourite;
    fillAllLists();
  }
}
