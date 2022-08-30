import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/poviders/products_providers.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  @override
  void initState() {
    final products = Provider.of<ProductProviders>(context, listen: false);
    products.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProviders>(context);
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
        itemCount: products.products?.bestSeller.length ?? 0,
        itemBuilder: (context, index) {
          return ListTile(
            title: Text(products.products?.bestSeller[index].title ?? ''),
          );
        },
      ),
    );
  }
}
