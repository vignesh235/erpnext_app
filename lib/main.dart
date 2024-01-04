import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'Controller/db_binding.dart';
import 'Controller/routes.dart';

void main() {
  runApp(const CupertinoStoreApp());
}

class CupertinoStoreApp extends StatelessWidget {
  const CupertinoStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.landingpage,
      getPages: getPages,
      initialBinding: DatabaseBinding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
