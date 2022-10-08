import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jw_job_flutter/page/career_talk_main/view.dart';
import 'package:jw_job_flutter/page/deliver_main/view.dart';
import 'package:jw_job_flutter/page/double_meeting_main/view.dart';
import 'package:jw_job_flutter/page/job_main/view.dart';
import 'package:jw_job_flutter/page/my_main/view.dart';
import 'package:jw_job_flutter/widget/keep_alive.dart';

import 'logic.dart';

class MainPage extends StatelessWidget {
  final logic = Get.find<MainLogic>();
  final state = Get.find<MainLogic>().state;
  final _pageController = PageController(initialPage: 0, keepPage: false);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<MainLogic>(
      builder: (s) => Scaffold(
        body: PageView(
          physics: NeverScrollableScrollPhysics(),
          controller: _pageController,
          children: [
            KeepAliveWrapper(child: JobMainPage()),
            KeepAliveWrapper(child: DoubleMeetingMainPage()),
            KeepAliveWrapper(child: DeliverMainPage()),
            KeepAliveWrapper(child: CareerTalkMainPage()),
            KeepAliveWrapper(child: MyMainPage())
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "职场"),
            BottomNavigationBarItem(
                icon: Icon(Icons.meeting_room), label: "双选会"),
            BottomNavigationBarItem(icon: Icon(Icons.message), label: "投递"),
            BottomNavigationBarItem(icon: Icon(Icons.chair), label: "宣讲会"),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: "我的"),
          ],
          type: BottomNavigationBarType.fixed,
          currentIndex: state.postion,
          onTap: (index) {
            if (_pageController.page != index) {
              _pageController.jumpToPage(index);
            }
            logic.tabChange(index);
          },
        ),
      ),
    );
  }

  Widget getBody() {
    if (state.postion == 0) {
      return KeepAliveWrapper(child: JobMainPage());
    } else if (state.postion == 1) {
      return KeepAliveWrapper(child: DoubleMeetingMainPage());
    } else if (state.postion == 2) {
      return KeepAliveWrapper(child: DeliverMainPage());
    } else if (state.postion == 3) {
      return KeepAliveWrapper(child: CareerTalkMainPage());
    } else if (state.postion == 4) {
      return KeepAliveWrapper(child: MyMainPage());
    } else {
      return Container();
    }
  }
}
