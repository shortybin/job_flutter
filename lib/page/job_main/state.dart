import 'package:jw_job_flutter/bean/job_feed.dart';

class JobMainState {
  JobMainState() {
    ///Initialize variables
  }

  List tabs = ["全部", "实习", "社招", "校招"];
  final bannerList = [];
  final List<Data> jobFeedList = [];
  bool bannerIsLoop = false;
  int page = 0;
}
