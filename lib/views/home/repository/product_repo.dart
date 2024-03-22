import 'package:e_commerce/data/network/api_service.dart';
import 'package:e_commerce/res/app_url.dart';
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
}
