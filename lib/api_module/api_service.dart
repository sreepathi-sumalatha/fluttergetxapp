import 'package:http/http.dart ' as http;

import '../product_module/modules/product_model.dart';

class ApiService {
  static var client = http.Client();
  static Future fetchProducts() async
   {
    var responce = await client.get(Uri.parse(
        'https://makeup-api.herokuapp.com/api/v1/products.json?brand=marienatie'));
    if (responce.statusCode == 200)
     {
      var jsonString = responce.body;
      return productModelFromJson(jsonString);
    }
  }
}
