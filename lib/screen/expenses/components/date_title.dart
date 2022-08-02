import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/constant.dart';

class DateTitle extends StatelessWidget {
  const DateTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 5),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(title, style: Constant.fontBlack18),
            const Icon(
              Icons.more_horiz,
              color: Color(0xff2c4260),
              size: 30,
            ),
          ],
        ),
        const SizedBox(height: 7),
        Container(
          height: 3,
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.black12,
            borderRadius: BorderRadius.circular(5),
          ),
        ),
      ],
    );
  }
}
