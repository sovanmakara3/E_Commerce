import 'dart:io';

import 'package:http/http.dart' as http;

import '../app_exception.dart';

class ApiService {
  //Delete Product
  Future<dynamic> deleteRestaurant(url) async {
    var headers = {'accept': 'application/json'};
    var request = http.Request('DELETE', Uri.parse(url));

    request.headers.addAll(headers);

    var response = await request.send();

    if (response.statusCode == 200) {
      print(await response.stream.bytesToString());
    } else {
      print(response.reasonPhrase);
    }
  }

  // Post Product
  Future<dynamic> postProduct(url, data, bool isFromUpdate) async {
    var headers = {
      'accept': 'application/json',
      'Content-Type': 'application/json'
    };
    var request = http.Request(isFromUpdate ? 'PUT' : 'POST', Uri.parse(url));
    request.body = data;
    request.headers.addAll(headers);

    http.StreamedResponse response = await request.send();

    if (response.statusCode == 200) {
      return true;
    } else {
      return false;
    }
  }

  // Uplaod Image
  Future<dynamic> uploadImage(image, url) async {
    http.StreamedResponse? response;
    try {
      var request = http.MultipartRequest('POST', Uri.parse(url));
      request.files.add(await http.MultipartFile.fromPath('files', image));
      response = await request.send();

      return returnResponse(response);
    } on Exception {
      throw FetchDataException(response!.reasonPhrase);
    }
  }

  // Get Api
  Future<dynamic> getApi(url) async {
    http.StreamedResponse? response;
    try {
      var request = http.Request('GET', Uri.parse(url));
      response = await request.send();
      return returnResponse(response);
    } on SocketException {
      throw FetchDataException(response!.reasonPhrase.toString());
    }
  }

  returnResponse(http.StreamedResponse response) async {
    // print('response: ${response.reasonPhrase}');
    switch (response.statusCode) {
      case 200:
        return await response.stream.bytesToString();
      case 404:
      case 500:
    }
  }
}
