import 'package:flutter/material.dart';

class Expenses {
  String title;
  String subTitle;
  String time;
  Color iconColor;
  IconData icon;
  double expensesPrice;

  Expenses(this.title, this.subTitle, this.time, this.iconColor, this.icon,
      this.expensesPrice);
}

List<Expenses> expensesList = [
  Expenses("Hotel", "11:12 pm - Naroda Highway Hotel", "Today",
      Colors.lightBlue, Icons.home, 1112.2),
  Expenses("Grocery", "04:32 pm - Grocery @D-mart", "Today", Colors.cyan,
      Icons.local_grocery_store_sharp, 1112),
  Expenses("Light Bill", "01:12 am - Light Bill", "Yesterday", Colors.amber,
      Icons.lightbulb, 230),
  Expenses("Mobile Recharge", "11:54 pm - Mobile Bill Father", "Yesterday",
      Colors.deepPurpleAccent, Icons.mobile_friendly_rounded, 3400),
  Expenses("Petrol", "05:40 pm - Car Petrol", "Yesterday", Colors.green,
      Icons.local_fire_department_outlined, 400),
  Expenses("Coffee", "05:21 pm - Food Adda ", "Yesterday", Colors.teal,
      Icons.emoji_food_beverage_rounded, 150),
  Expenses("Grocery", "04:32 pm - Grocery @D-mart", "Yesterday", Colors.cyan,
      Icons.home, 1112),
  Expenses("Light Bill", "01:12 am - Light Bill", "Yesterday", Colors.amber,
      Icons.lightbulb, 230),
  Expenses("Coffee", "05:40 pm - Car Petrol", "Sunday", Colors.green,
      Icons.local_fire_department_outlined, 400),
  Expenses("Coffee", "05:21 pm - Food Adda ", "Sunday", Colors.teal,
      Icons.emoji_food_beverage_rounded, 150),
  Expenses("Mobile Recharge", "11:54 pm - Mobile Bill Father", "Sunday",
      Colors.deepPurpleAccent, Icons.mobile_friendly_rounded, 3400),
  Expenses("Petrol", "05:40 pm - Car Petrol", "Sunday", Colors.green,
      Icons.local_fire_department_outlined, 400),
  Expenses("Coffee", "05:21 pm - Food Adda ", "Sunday", Colors.teal,
      Icons.emoji_food_beverage_rounded, 150),
];
