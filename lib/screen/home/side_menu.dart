import 'package:flutter/material.dart';
import 'package:flutter_web_expenses/responsive.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class SideMenu extends StatelessWidget {
  const SideMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        DrawerHeader(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Icon(Icons.person_pin, size: 65),
              const SizedBox(
                height: 10,
              ),
              Expanded(
                child: Text(
                  "Flutter",
                  style: Theme.of(context).textTheme.headline5,
                  overflow: TextOverflow.clip,
                ),
              ),
              Expanded(
                child: Text(
                  "flutter.dev.com",
                  style: Theme.of(context).textTheme.headline6,
                  overflow: TextOverflow.clip,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          height: 10.h,
        ),
        SideMenuList(
            icon: Icons.dashboard_sharp, title: "DashBoard", onTap: () {}),
        SideMenuList(icon: Icons.money, title: "Expenses", onTap: () {}),
        SideMenuList(
            icon: Icons.account_balance_wallet_rounded,
            title: "Wallets",
            onTap: () {}),
        SideMenuList(
            icon: Icons.bar_chart_rounded, title: "Summary", onTap: () {}),
        SideMenuList(
            icon: Icons.monetization_on, title: "Accounts", onTap: () {}),
        SideMenuList(icon: Icons.settings, title: "Settings", onTap: () {}),
      ],
    );
  }
}

class SideMenuList extends StatelessWidget {
  const SideMenuList({
    Key? key,
    required this.title,
    required this.onTap,
    required this.icon,
  }) : super(key: key);

  final String title;
  final VoidCallback onTap;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return ListTile(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.0),
        ),
        selected: title == "DashBoard" ? true : false,
        leading: Icon(icon, color: Colors.white),
        title: FittedBox(
          fit: BoxFit.scaleDown,
          alignment: Alignment.centerLeft,
          child: Text(
            title,
            style: Theme.of(context).textTheme.headline5,
            textAlign: TextAlign.start,
          ),
        ),
        onTap: onTap,
        hoverColor: Colors.white54);
  }
}
