import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../poviders/products_providers.dart';

class CategorySelectUI extends StatefulWidget {
  const CategorySelectUI({Key? key}) : super(key: key);

  @override
  State<CategorySelectUI> createState() => _CategorySelectUIState();
}

class _CategorySelectUIState extends State<CategorySelectUI> {
  @override
  Widget build(BuildContext context) {
    final products = Provider.of<ProductProviders>(context);
    return SingleChildScrollView(
        padding: EdgeInsets.all(4),
        scrollDirection: Axis.horizontal,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 8),
              child: Column(
                children: [
                  Container(
                    width: 71,
                    height: 71,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color:
                            products.isSelected ? Colors.white : Colors.orange,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(
                              3,
                              3,
                            ), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: IconButton(
                        icon: Image.asset('assets/phone.png'),
                        onPressed: () {
                          products.changeColor();
                        },
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Text(
                      'Phones',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Mark Pro'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 8),
              child: Column(
                children: [
                  Container(
                    width: 71,
                    height: 71,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(
                              3,
                              3,
                            ), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: IconButton(
                        icon: Image.asset('assets/pc.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Text(
                      'Computer',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Mark Pro'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 8),
              child: Column(
                children: [
                  Container(
                    width: 71,
                    height: 71,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(
                              3,
                              3,
                            ), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: IconButton(
                        icon: Image.asset('assets/health.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Text(
                      'Health',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Mark Pro'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 8),
              child: Column(
                children: [
                  Container(
                    width: 71,
                    height: 71,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 3,
                            offset: Offset(
                              3,
                              3,
                            ), // changes position of shadow
                          ),
                        ]),
                    child: Center(
                      child: IconButton(
                        icon: Image.asset('assets/books.png'),
                        onPressed: () {},
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 7.0),
                    child: Text(
                      'Books',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w500,
                          fontFamily: 'Mark Pro'),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 23.0, right: 8),
              child: Container(
                width: 71,
                height: 71,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 2,
                        blurRadius: 3,
                        offset: Offset(
                          3,
                          3,
                        ), // changes position of shadow
                      ),
                    ]),
              ),
            ),
          ],
        ));
  }
}
