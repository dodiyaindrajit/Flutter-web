import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/constant.dart';
import 'package:flutter_web_expenses/model/expenses/expenses.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    Key? key,
    required this.categoryController,
  }) : super(key: key);

  final ScrollController categoryController;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      controller: categoryController,
      itemCount: expensesList.length,
      shrinkWrap: true,
      itemBuilder: (context, count) {
        return Card(
          elevation: 4,
          shape: const StadiumBorder(),
          clipBehavior: Clip.antiAlias,
          borderOnForeground: false,
          child: Container(
            padding: EdgeInsets.symmetric(vertical: 3, horizontal: 5),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  expensesList[count].iconColor,
                  const Color.fromARGB(255, 255, 255, 255),
                ],
                begin: Alignment.centerLeft,
                end: Alignment.centerRight,
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    CircleAvatar(
                      backgroundColor: Colors.white,
                      foregroundColor: expensesList[count].iconColor,
                      radius: 15,
                      child: Icon(
                        expensesList[count].icon,
                        size: 20,
                      ),
                    ),
                    SizedBox(width: 10),
                    Text(
                      expensesList[count].title,
                      style: Constant.fontBlack12,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
                Text("\$${expensesList[count].expensesPrice}",
                    style: Constant.fontBlack16)
              ],
            ),
          ),
        );
      },
    );
  }
}