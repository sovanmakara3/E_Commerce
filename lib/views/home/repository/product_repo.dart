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
  Future<dynamic> postProduct(data, {isFromUpdate, id}) async {
    print('product id $id');
    var productRequest = productRequestToJson(data);
    var url = isFromUpdate ? '${AppUrl.postProducts}/$id' : AppUrl.postProducts;
    dynamic response =
        await apiService.postProduct(url, productRequest, isFromUpdate);
    return response;
  }

  //Delete Products
  Future<dynamic> deleteProduct(id) async {
    dynamic response =
        await apiService.deleteRestaurant('${AppUrl.postProducts}/$id');
    return response;
  }
}
