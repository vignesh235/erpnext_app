import 'package:get/get.dart';

class ProductController extends GetxController {
  var test = "".obs;
  @override
  void onInit() {
    // TODO: implement onInit
    print("=============testing=============");
    test.value = "Testing";
    super.onInit();
  }
}
