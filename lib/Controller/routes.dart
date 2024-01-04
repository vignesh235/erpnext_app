import 'package:get/get_navigation/src/routes/get_route.dart';

import '../Page/Products/product_binding.dart';
import '../Page/Products/product_page.dart';
import '../Page/bottomnavigation.dart';
import '../Page/dashboard/dash_binding.dart';
import '../Page/dashboard/dash_board.dart';
import '../Page/home/home_page.dart';

class Routes {
  static String homepage = '/home';
  static String bottomnavigation = '/bottomnaviagtion';
  static String productpage = '/product';
}

final getPages = [
  GetPage(name: Routes.homepage, page: () => CupertinoStoreHomePage()),
  GetPage(
      name: Routes.bottomnavigation,
      page: () => DashboardPage(),
      binding: dash_boardBinding()),
  GetPage(
      name: Routes.productpage,
      page: () => productHomepage(),
      binding: Product_binding())
];
