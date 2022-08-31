import 'package:flutter/material.dart';
import 'package:test_task/theme/colors.dart';

/// класс для отрисовки верхнего меню с выбором категории
class CategorySelectUI extends StatefulWidget {
  const CategorySelectUI({Key? key}) : super(key: key);

  @override
  State<CategorySelectUI> createState() => _CategorySelectUIState();
}

class _CategorySelectUIState extends State<CategorySelectUI> {
  int selectedContainer = 0;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: EdgeInsets.all(4),
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          _phoneContainer(0),
          _computerContainer(1),
          _healthContainer(2),
          _booksContainer(3),
          _emptyContainer(4)
        ],
      ),
    );
  }

  _phoneContainer(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.0, right: 8),
      child: Column(
        children: [
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedContainer == index
                    ? ColorsApp.orange
                    : ColorsApp.white,
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
                  setState(() {
                    selectedContainer = index;
                  });
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
    );
  }

  _computerContainer(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.0, right: 8),
      child: Column(
        children: [
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedContainer == index
                    ? ColorsApp.orange
                    : ColorsApp.white,
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
                onPressed: () {
                  setState(() {
                    selectedContainer = index;
                  });
                },
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
    );
  }

  _healthContainer(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.0, right: 8),
      child: Column(
        children: [
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedContainer == index
                    ? ColorsApp.orange
                    : ColorsApp.white,
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
                onPressed: () {
                  setState(() {
                    selectedContainer = index;
                  });
                },
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
    );
  }

  _booksContainer(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.0, right: 8),
      child: Column(
        children: [
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedContainer == index
                    ? ColorsApp.orange
                    : ColorsApp.white,
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
                onPressed: () {
                  setState(() {
                    selectedContainer = index;
                  });
                },
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
    );
  }

  _emptyContainer(int index) {
    return Padding(
      padding: const EdgeInsets.only(left: 23.0, right: 8),
      child: Column(
        children: [
          Container(
            width: 71,
            height: 71,
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: selectedContainer == index
                    ? ColorsApp.orange
                    : ColorsApp.white,
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
                icon: Icon(
                  Icons.add,
                  color: Colors.white,
                ),
                onPressed: () {
                  setState(() {
                    selectedContainer = index;
                  });
                },
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 7.0),
            child: Text(
              '',
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 15,
                  fontWeight: FontWeight.w500,
                  fontFamily: 'Mark Pro'),
            ),
          ),
        ],
      ),
    );
  }
}
