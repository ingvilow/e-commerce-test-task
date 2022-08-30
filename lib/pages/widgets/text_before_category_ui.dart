import 'package:flutter/cupertino.dart';
import 'package:test_task/theme/typography.dart';

import '../../theme/colors.dart';

class TextBeforeCategoryUI extends StatelessWidget {
  const TextBeforeCategoryUI({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Text(
          TypographysStrings().select,
          style: const TextStyle(
              fontFamily: 'Mark Pro',
              color: ColorsApp.black,
              fontWeight: FontWeight.w700,
              fontSize: 25),
        ),
        Text(
          TypographysStrings().viewAll,
          style: const TextStyle(
              fontFamily: 'Mark Pro',
              color: ColorsApp.orange,
              fontWeight: FontWeight.w400,
              fontSize: 15),
        ),
      ],
    );
  }
}
