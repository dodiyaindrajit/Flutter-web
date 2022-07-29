import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/constant.dart';
import 'package:flutter_web_expenses/model/expenses/expenses.dart';
import 'package:grouped_list/grouped_list.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GroupedListView<dynamic, String>(
        elements: expensesList,
        groupBy: (val) => val.time,
        groupComparator: (value1, value2) =>
            value2.length.compareTo(value1.length),
        // itemComparator: (item1, item2) => item1.time.compareTo(item2.time),
        order: GroupedListOrder.DESC,
        useStickyGroupSeparators: true,
        stickyHeaderBackgroundColor: Colors.white,
        addRepaintBoundaries: false,
        groupHeaderBuilder: (value) => Container(
          margin: const EdgeInsets.symmetric(vertical: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30),
            color: Colors.black,
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Text(
                    value.time,
                    style: Theme.of(context).textTheme.headline5,
                  ),
                ),
                const Icon(
                  Icons.more_horiz,
                  color: Colors.white,
                  size: 40,
                )
              ],
            ),
          ),
        ),
        itemBuilder: (c, element) {
          return ListTile(
            leading: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: element.iconColor,
              ),
              height: 45,
              width: 45,
              child: Icon(
                element.icon,
                color: Colors.white,
                size: 22,
              ),
            ),
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  element.title,
                  style: Constant.fontBlack12,
                ),
                Text(element.subTitle, style: Constant.fontBlack12Normal),
              ],
            ),
            trailing: Text("-" + element.expensesPrice.toString(),
                style: Constant.fontBlack16),
          );
        },
      ),
    );
  }
}
