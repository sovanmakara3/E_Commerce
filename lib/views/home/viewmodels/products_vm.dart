import 'package:e_commerce/data/response/api_response.dart';
import 'package:e_commerce/views/home/repository/product_repo.dart';
import 'package:flutter/material.dart';

class ProductViewModel extends ChangeNotifier {
  final _productRepo = ProductRepository();
  ApiResponse<dynamic> response = ApiResponse.loading();

  setProductList(response) {
    this.response = response;
    notifyListeners();
  }

  Future<dynamic> getAllProduct() async {
    await _productRepo
        .getAllProducts()
        .then((product) => setProductList(ApiResponse.completed(product)))
        // .onError((error, stackTrace) => print(stackTrace.toString()));
        .onError((error, stackTrace) =>
            setProductList(ApiResponse.error(stackTrace.toString())));
  }
}
