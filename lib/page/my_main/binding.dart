import 'package:get/get.dart';

import 'logic.dart';

class MyMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MyMainLogic());
  }
}
