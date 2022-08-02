import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/responsive.dart';
import 'package:flutter_web_expenses/screen/expenses/expenses.dart';
import 'package:flutter_web_expenses/screen/home/side_menu.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: [
            if (Responsive.isDesktop(context))
              Expanded(
                child: SideMenu(),
              ),
            Expanded(
              flex: 5,
              child: Expenses(),
            )
          ],
        ),
      ),
    );
  }
}
