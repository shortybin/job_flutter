import 'package:get/get.dart';

import 'logic.dart';

class DeliverMainBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DeliverMainLogic());
  }
}
