import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/constant.dart';
import 'package:flutter_web_expenses/responsive.dart';
import 'package:flutter_web_expenses/screen/expenses/components/categories.dart';
import 'package:flutter_web_expenses/screen/expenses/components/expenses_graph_info.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Expenses extends StatelessWidget {
  const Expenses({
    Key? key,
  }) : super(key: key);

  static List<Widget> expensesWidgetList = [
    SizedBox(
      height: 100.h,
      child: ExpensesGraphAndInfo(),
    ),
    SizedBox(
      height: 100.h,
      child: CategoriesBar(),
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
          right: 30,
          top: 30,
          bottom: 30,
          left: Responsive.isDesktop(context) ? 0 : 30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      height: double.infinity,
      child: Responsive.isMobile(context)
          ? SingleChildScrollView(child: Column(children: expensesWidgetList))
          : Row(
              children: [
                Expanded(
                  flex: Responsive.isDesktop(context) ? 4 : 3,
                  child: ExpensesGraphAndInfo(),
                ),
                Expanded(
                  flex: 2,
                  child: CategoriesBar(),
                )
              ],
            ),
    );
  }
}
