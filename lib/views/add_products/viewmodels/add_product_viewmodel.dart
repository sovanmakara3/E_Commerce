import 'package:e_commerce/data/response/api_response.dart';
import 'package:e_commerce/views/home/repository/product_repo.dart';
import 'package:flutter/material.dart';

class AddProductViewModel extends ChangeNotifier {
  final _productRepo = ProductRepository();
  var response = ApiResponse();

  setProductData(response) {
    this.response = response;
    notifyListeners();
  }

  Future<dynamic> postProduct(data, {isFromUpdate, id}) async {
    setProductData(ApiResponse.loading());
    await _productRepo
        .postProduct(data, isFromUpdate: isFromUpdate, id: id)
        .then((isPosted) => setProductData(ApiResponse.completed(isPosted)))
        .onError((error, stackTrace) =>
            setProductData(ApiResponse.error(stackTrace.toString())));
  }
}
