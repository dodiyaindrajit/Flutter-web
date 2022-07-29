import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/screen/expenses/components/expenses_list.dart';
import 'package:flutter_web_expenses/screen/expenses/components/expenses_title_user.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class ExpensesGraphAndInfo extends StatelessWidget {
  const ExpensesGraphAndInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 5.h, horizontal: 5.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const ExpensesTitleAndUser(),
          SizedBox(height: 12.h),
          const ExpensesList(),
        ],
      ),
    );
  }
}
