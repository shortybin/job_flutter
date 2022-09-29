import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class CareerTalkMainPage extends StatelessWidget {
  final logic = Get.find<CareerTalkMainLogic>();
  final state = Get.find<CareerTalkMainLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("宣讲会"),
      ),
    );
  }
}
