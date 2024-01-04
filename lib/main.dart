import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'Controller/routes.dart';

void main() {
  runApp(const CupertinoStoreApp());
}

class CupertinoStoreApp extends StatelessWidget {
  const CupertinoStoreApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: Routes.bottomnavigation,
      getPages: getPages,
      debugShowCheckedModeBanner: false,
    );
  }
}
