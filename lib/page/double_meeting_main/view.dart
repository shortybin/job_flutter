import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class DoubleMeetingMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<DoubleMeetingMainLogic>();
    final state = Get.find<DoubleMeetingMainLogic>().state;

    return CupertinoPageScaffold(
        child: Container(
      alignment: Alignment.bottomCenter,
      child: Text("双选会"),
    ));
  }
}
