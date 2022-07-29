import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/screen/expenses/expenses.dart';
import 'package:flutter_web_expenses/screen/home/side_menu.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Row(
          children: const [
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
