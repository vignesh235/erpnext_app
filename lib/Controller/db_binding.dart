import 'package:flutter_application_1/Controller/dbhelpercontoller.dart';
import 'package:get/get.dart';

import '../Page/Products/product_contoller.dart';

class DatabaseBinding extends Bindings {
  @override
  void dependencies() {
    print("DatabaseBinding initialized");

    Get.put(Databsehelper());
    Get.put(ProductController());
  }
}
