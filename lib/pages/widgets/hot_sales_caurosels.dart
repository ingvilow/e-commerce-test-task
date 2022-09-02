import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:test_task/poviders/products_providers.dart';

class HotSalesCorusels extends StatefulWidget {
  const HotSalesCorusels({Key? key}) : super(key: key);

  @override
  State<HotSalesCorusels> createState() => _HotSalesCoruselsState();
}

class _HotSalesCoruselsState extends State<HotSalesCorusels> {
  @override
  void initState() {
    var product = Provider.of<ProductProviders>(context, listen: false);
    product.getProducts();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var product = Provider.of<ProductProviders>(context);
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: product.products?.homeStore.length ?? 0,
              itemBuilder: (BuildContext context, int index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        height: 100,
                        imageUrl:
                            product.products?.homeStore[index].picture ?? '',
                        fit: BoxFit.fill,
                        imageBuilder: (context, image) => Padding(
                          padding: const EdgeInsets.only(bottom: 4),
                          child: SizedBox(
                            width: double.infinity,
                            height: 180,
                            child: DecoratedBox(
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                  image: image,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class TestWidget extends StatelessWidget {
  const TestWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: const [
              HotSalesCorusels(),
            ],
          ),
        ),
      ),
    );
  }
}
