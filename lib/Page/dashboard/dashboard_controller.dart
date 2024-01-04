import 'package:get/get.dart';

import '../../Controller/dbhelpercontoller.dart';
import '../Products/product_contoller.dart';

class Dashboardcontroller extends GetxController {
  var tabIndex = 0;
  void changeTabIndex(index) {
    tabIndex = index;
    update();
    print("++++++++++++++++++++++++++++++++++++++");
    print(index);
    if (index == 1) {
      if (!Get.isRegistered<ProductController>()) {
        Get.put(ProductController());
      } else {
        Get.find<Databsehelper>();
      }
    }
    if (!Get.isRegistered<Databsehelper>()) {
      Get.put(Databsehelper());
    } else {
      Get.find<Databsehelper>();
    }
  }
}
