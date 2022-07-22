import 'package:flutter/material.dart';
import 'package:e_commerce/models/dummy_data.dart';
import 'package:e_commerce/models/products.dart';
import 'package:e_commerce/view/pages/AddProducts.dart';
import 'package:e_commerce/view/pages/detials.dart';
import 'package:e_commerce/view/pages/favarite_page.dart';
import 'package:provider/provider.dart';

class ProductProivder extends ChangeNotifier {
  List<Product> Allproducts = [];
  List<Product> fproducts = [];
  List<Product> notfproducts = [];
  List<Product> returnFP() {
    fillAllLists();
    return fproducts;
  }

  bool isLight = true;
  changeMode() {
    isLight = !isLight;
    fillAllLists();
  }

  addNewProdct(Product p) {
    Allproducts.add(p);
    fillAllLists();
  }

  changeCurent(Product p) {
    int index = Allproducts.indexOf(p);
    Allproducts[index].count = Allproducts[index].count;

    notifyListeners();
  }

  ProductProivder() {
    DummyData.data.forEach((element) {
      Allproducts.add(Product(
        id: element['id'].toString(),
        title: element['title'].toString(),
        price: element['price'].toString(),
        description: element['description'].toString(),
        categery: element['categery'].toString(),
        image: element['image'].toString(),
      ));
    });
  }

  fillAllLists() {
    fproducts = Allproducts.where((element) => element.isFavourite).toList();
    notfproducts =
        Allproducts.where((element) => !element.isFavourite).toList();
    notifyListeners();
  }

  int fillAllLists2() {
    fillAllLists();
    return Allproducts.where((element) => element.isFavourite).toList().length;
  }

  updateProudcts(Product p) {
    int index = Allproducts.indexOf(p);
    Allproducts[index].isFavourite = !Allproducts[index].isFavourite;
    fillAllLists();
  }

  addToFavarite(Product p) {
    p.isFavourite = true;
    fillAllLists();
  }

  deleteFromFavarite(Product p) {
    p.isFavourite = false;
    fillAllLists();
  }
}
