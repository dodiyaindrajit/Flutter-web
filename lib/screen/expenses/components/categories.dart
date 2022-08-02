import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/constant.dart';
import 'package:flutter_web_expenses/model/expenses/expenses.dart';
import 'package:flutter_web_expenses/responsive.dart';
import 'package:flutter_web_expenses/screen/expenses/components/caegories_listview.dart';
import 'package:flutter_web_expenses/screen/expenses/components/calender_compoenets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class CategoriesBar extends StatelessWidget {
  const CategoriesBar({Key? key}) : super(key: key);

  static ScrollController categoryController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 2.5.w, top: 2.h, bottom: 2.h),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Categories",
            overflow: TextOverflow.ellipsis,
            style: Constant.fontBlack32.copyWith(fontSize: 20.sp),
          ),
          SizedBox(height: 3.2.h),
          Expanded(
              flex: 3,
              child: CategoryListView(categoryController: categoryController)),
          SizedBox(height: 2.h),
          Expanded(
            flex: Responsive.isMobile(context) ? 3 :6,
            child: CalenderWidget(),
          )
        ],
      ),
    );
  }
}
