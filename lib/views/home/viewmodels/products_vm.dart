import 'package:e_commerce/data/response/api_response.dart';
import 'package:e_commerce/views/home/repository/product_repo.dart';
import 'package:flutter/material.dart';

class ProductViewModel extends ChangeNotifier {
  final _productRepo = ProductRepository();
  ApiResponse<dynamic> response = ApiResponse.loading();
  var deleteResponse = ApiResponse();

  setProductList(response) {
    this.response = response;
    notifyListeners();
  }

  setDeleteResponse(response) {
    deleteResponse = response;
    notifyListeners();
  }

  Future<dynamic> deleteProduct(id) async {
    await _productRepo
        .deleteProduct(id)
        .then((data) => setDeleteResponse(ApiResponse.completed(data)))
        .onError((error, stackTrace) =>
            setDeleteResponse(ApiResponse.error(stackTrace.toString())));
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
