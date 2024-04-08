import 'package:e_commerce/data/network/api_service.dart';
import 'package:e_commerce/res/app_url.dart';
import 'package:e_commerce/views/add_products/models/response/image_response.dart';

class ImageRepository {
  final _apiService = ApiService();

  Future<List<ImageResponse>> uploadImage(image) async {
    var response = await _apiService.uploadImage(image, AppUrl.uploadImage);
    return imageResponseFromJson(response);
  }
}
