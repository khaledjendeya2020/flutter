import 'dart:developer';

import 'package:api/response/get_all.dart';
import 'package:dio/dio.dart';

class ApiClint {
  Dio dio = Dio();

  GetAllProducts() async {
    Response response = await dio.get('https://fakestoreapi.com/products');
    return response;
    // List dataList = response.data;
    // List<GetAllProductsFromJson> products =
    //     dataList.map((e) => GetAllProductsFromJson.fromJson(e)).toList();
    // print(products.length.toString());
  }
}
