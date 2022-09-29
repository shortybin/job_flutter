import 'package:get/get.dart';

import 'logic.dart';

class DoubleMeetingMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DoubleMeetingMainLogic());
  }
}
