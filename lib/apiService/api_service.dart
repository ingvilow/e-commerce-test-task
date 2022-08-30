import 'package:http/http.dart' as http;
import 'dart:convert' as convert;
import 'package:test_task/models/product_detail.dart';
import 'package:test_task/models/products.dart';

class ApiServiceClient {
  Future<Products> fetchProduct() async {
    final result = await http.get(Uri.parse(
        'https://run.mocky.io/v3/654bd15e-b121-49ba-a588-960956b15175'));
    final jsonResponse = convert.jsonDecode(result.body);
    if (result.statusCode == 200) {
      return Products.fromJson(jsonResponse);
    }
    throw Exception();
  }

  Future<ProductDetail> fetchProductDetail() async {
    final result = await http.get(Uri.parse(
        'https://run.mocky.io/v3/6c14c560-15c6-4248-b9d2-b4508df7d4f5'));
    final jsonResponse = convert.jsonDecode(result.body);
    if (result.statusCode == 200) {
      return ProductDetail.fromJson(jsonResponse);
    }
    throw Exception();
  }
}
