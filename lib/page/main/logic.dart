import 'package:get/get.dart';

import 'state.dart';

class MainLogic extends GetxController {
  final MainState state = MainState();

  void tabChange(int index) {
    state.postion=index;
    update();
  }
}
