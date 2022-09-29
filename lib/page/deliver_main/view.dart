import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'logic.dart';

class DeliverMainPage extends StatelessWidget {
  final logic = Get.find<DeliverMainLogic>();
  final state = Get.find<DeliverMainLogic>().state;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("投递"),
      ),
    );
  }
}
