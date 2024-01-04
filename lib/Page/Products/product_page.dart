import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'product_contoller.dart';

class productHomepage extends GetView<ProductController> {
  @override
  Widget build(BuildContext context) {
    print(Get.isRegistered<ProductController>());
    return Scaffold(
      body: Obx(() => Text(controller.test.value)),
    );
  }
}
