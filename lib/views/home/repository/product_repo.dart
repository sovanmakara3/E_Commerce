import 'package:e_commerce/data/network/api_service.dart';
import 'package:e_commerce/res/app_url.dart';
import 'package:e_commerce/views/add_products/models/request/product_request.dart';
import 'package:e_commerce/views/home/model/product.dart';

class ProductRepository {
  var apiService = ApiService();

  /// Get Products
  Future<Products> getAllProducts() async {
    try {
      dynamic response = await apiService.getApi(AppUrl.getAllProducts);
      return productsFromJson(response);
    } catch (exception) {
      rethrow;
    }
  }

  /// Upload Products
  Future<dynamic> postProduct(data) async {
    var productRequest = productRequestToJson(data);
    dynamic response =
        await apiService.postProduct(AppUrl.postProducts, productRequest);
    return response;
  }
}
