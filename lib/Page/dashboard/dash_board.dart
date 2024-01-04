import "package:flutter/cupertino.dart";
import "package:flutter/material.dart";
import "package:get/get.dart";

import "../Products/product_page.dart";
import "../home/home_page.dart";
import "dashboard_controller.dart";

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
  @override
  Widget build(BuildContext context) {
    return GetBuilder<Dashboardcontroller>(builder: (controller) {
      return Scaffold(
          body: SafeArea(
              child: IndexedStack(
            index: controller.tabIndex,
            children: [CupertinoStoreHomePage(), productHomepage()],
          )),
          bottomNavigationBar: BottomNavigationBar(
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            items: [
              bottom(CupertinoIcons.add_circled, "home"),
              bottom(CupertinoIcons.add_circled, "test")
            ],
          ));
    });
  }

  bottom(IconData icon, String label) {
    return BottomNavigationBarItem(icon: Icon(icon), label: label);
  }
}
