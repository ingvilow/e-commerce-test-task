import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/pages/widgets/category_ui_slidable.dart';
import 'package:test_task/pages/widgets/text_before_category_ui.dart';
import 'package:test_task/poviders/products_providers.dart';
import 'package:test_task/theme/typography.dart';

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
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            IconButton(
              onPressed: () {},
              icon: Image.asset('assets/tag.png'),
            ),
            Text(
              TypographysStrings().appBarText,
              style: const TextStyle(
                  fontFamily: 'Mark Pro',
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.keyboard_arrow_down_rounded,
                color: Colors.black26,
              ),
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          TextBeforeCategoryUI(),
          SizedBox(
            height: 24,
          ),
          CategorySelectUI(),
        ],
      ),
    );
  }
}
