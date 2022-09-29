import 'package:get/get.dart';

import 'logic.dart';

class JobMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => JobMainLogic());
  }
}
