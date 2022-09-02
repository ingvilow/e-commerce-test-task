import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_task/theme/colors.dart';

class SearchBarWidget extends StatefulWidget {
  const SearchBarWidget({Key? key}) : super(key: key);

  @override
  State<SearchBarWidget> createState() => _SearchBarWidgetState();
}

class _SearchBarWidgetState extends State<SearchBarWidget> {
  TextEditingController controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
          width: 300,
          height: 34,
          child: Padding(
            padding: const EdgeInsets.only(left: 32, right: 11),
            child: TextField(
              textAlign: TextAlign.start,
              onChanged: (String value) {},
              controller: controller,
              decoration: InputDecoration(
                  contentPadding: EdgeInsets.only(left: 4.48),
                  fillColor: ColorsApp.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderSide: BorderSide.none,
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                  ),
                  prefixIcon: const Icon(
                    Icons.search,
                    color: ColorsApp.orange,
                  ),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w400,
                      fontFamily: 'Mark Pro')),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 37.0),
          child: Container(
            width: 34,
            height: 34,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: ColorsApp.orange,
            ),
            child: Center(
              child: IconButton(
                icon: Image.asset('assets/qr.png'),
                onPressed: () {
                  setState(() {});
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
