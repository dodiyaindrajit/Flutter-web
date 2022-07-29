import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/constant.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ExpensesTitleAndUser extends StatelessWidget {
  const ExpensesTitleAndUser({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Expenses",
              style: Constant.fontBlack32.copyWith(fontSize: 20.sp),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Icon(
                  Icons.person_outlined,
                  color: Colors.black,
                  size: 40,
                ),
                Icon(
                  Icons.add_circle,
                  color: Colors.black,
                  size: 30,
                ),
              ],
            )
          ],
        ),
        Text(
          "Till:  ${DateTime.now().day} / ${DateTime.now().month} / ${DateTime.now().year}",
          style: TextStyle(color: Colors.black45, fontSize: 12.5.sp),
        )
      ],
    );
  }
}
