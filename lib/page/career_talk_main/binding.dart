import 'package:get/get.dart';

import 'logic.dart';

class CareerTalkMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => CareerTalkMainLogic());
  }
}
