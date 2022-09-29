import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class MyMainPage extends StatelessWidget {
  final logic = Get.find<MyMainLogic>();
  final state = Get.find<MyMainLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("我的"),
      ),
    );
  }
}
