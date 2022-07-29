import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/screen/expenses/components/expenses_graph_info.dart';

class Expenses extends StatelessWidget {
  const Expenses({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(30),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30),
        color: Colors.white,
      ),
      height: double.infinity,
      child: Row(
        children: [
          const Expanded(
            flex: 4,
            child: ExpensesGraphAndInfo(),
          ),
          Expanded(
            flex: 2,
            child: Container(
              
            ),
          )
        ],
      ),
    );
  }
}
