import 'package:jw_job_flutter/base/page_state.dart';
import 'package:jw_job_flutter/bean/job_feed.dart';

class JobMainState extends PagingState<Data> {
  JobMainState() {
    ///Initialize variables
  }

  List tabs = ["全部", "实习", "社招", "校招"];
  final bannerList = [];
  bool bannerIsLoop = false;
  int page = 0;
}
