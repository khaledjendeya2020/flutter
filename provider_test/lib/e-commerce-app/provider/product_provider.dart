import 'package:flutter/material.dart';
import 'package:provider_test/e-commerce-app/model/dummy_data.dart';
import 'package:provider_test/e-commerce-app/model/product.dart';

class ProductProivder extends ChangeNotifier {
  List<Product> products = [];

  ProductProivder() {
    DummyData.data.forEach((element) {
      products.add(Product(
          id: element['id'].toString(),
          title: element['title'].toString(),
          price: element['price'].toString(),
          description: element['description'].toString(),
          categery: element['categery'].toString(),
          image: element['image'].toString()));
    });
  }
}
