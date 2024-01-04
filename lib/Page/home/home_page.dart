import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'home_controller.dart';

class CupertinoStoreHomePage extends GetView<Homecontroller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ElevatedButton(
          onPressed: () {
            Get.toNamed("/product");
          },
          child: Text("test")),
    );
  }
}
