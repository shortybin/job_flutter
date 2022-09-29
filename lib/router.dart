import 'package:get/get.dart';
import 'package:jw_job_flutter/page/career_talk_main/binding.dart';
import 'package:jw_job_flutter/page/deliver_main/binding.dart';
import 'package:jw_job_flutter/page/double_meeting_main/binding.dart';
import 'package:jw_job_flutter/page/job_main/binding.dart';
import 'package:jw_job_flutter/page/main/binding.dart';
import 'package:jw_job_flutter/page/main/view.dart';
import 'package:jw_job_flutter/page/my_main/binding.dart';

class RouteConfig {
  static const String mainPage = "/main";

  static final List<GetPage> getPages = [
    GetPage(name: mainPage, page: () => MainPage(), bindings: [
      MainBinding(),
      JobMainBinding(),
      DoubleMeetingMainBinding(),
      DeliverMainBinding(),
      CareerTalkMainBinding(),
      MyMainBinding()
    ]),
  ];
}
