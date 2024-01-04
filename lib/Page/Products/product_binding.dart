import 'package:get/get.dart';

import 'product_contoller.dart';

class Product_binding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProductController());
  }
}
