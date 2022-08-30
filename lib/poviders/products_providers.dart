import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider/single_child_widget.dart';
import 'package:test_task/apiService/api_service.dart';
import 'package:test_task/models/product_detail.dart';
import 'package:test_task/models/products.dart';

class ProductProviders with ChangeNotifier {
  /// массив провайдеров, чтобы не тянуть запросы в main
  List<SingleChildWidget> providers = [
    ChangeNotifierProvider<ProductProviders>(create: (_) => ProductProviders()),
  ];

  Products? products;
  ProductDetail? detailProduct;

  /// получить список всех продуктов из АПИ
  getProducts() async {
    products = await ApiServiceClient().fetchProduct();
    notifyListeners();
  }

  /// получить один продукт из АПИ
  getProductDetail() async {
    detailProduct = await ApiServiceClient().fetchProductDetail();
    notifyListeners();
  }
}
