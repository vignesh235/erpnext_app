import 'package:get/get.dart';

import 'dashboard_controller.dart';

class dash_boardBinding extends Bindings {
  @override
  void dependencies() {
    // TODO: implement dependencies
    Get.lazyPut(() => Dashboardcontroller());
  }
}
