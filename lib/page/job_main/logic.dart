import 'dart:collection';

import 'package:jw_job_flutter/base/page_controller.dart';
import 'package:jw_job_flutter/bean/job_feed.dart';
import 'package:jw_job_flutter/http/api_result.dart';
import 'package:jw_job_flutter/http/http_util.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

import '../../bean/job_banner.dart';
import 'state.dart';

class JobMainLogic extends PagingController<Data, JobMainState> {
  final JobMainState state = JobMainState();
  RefreshController refreshController = RefreshController();

  getBanner() async {
    ApiResult<JobBanner> jobBanners = await HttpManager.instance
        .post("position/fairbanner", JobBanner.fromJson);
    if (jobBanners.status == Status.SUCCESS) {
      state.bannerList.addAll(jobBanners.data!.data!);
      state.bannerIsLoop = true;
      update();
    } else {}
  }

  getList() async {
    Map<String, dynamic> map = HashMap();
    if (state.afterId != 0) {
      map["after_id"] = state.afterId;
    }
    ApiResult<JobFeed> apiResult = await HttpManager.instance
        .post("position/jobfeed", JobFeed.fromJson, data: map);
    if (apiResult.status == Status.SUCCESS) {
      state.listData.addAll(apiResult.data!.data!);
      state.afterId = state.listData.last.id!.toInt();
      update();
    } else {}
  }

  @override
  JobMainState getState() {
    return state;
  }

  @override
  refreshData() async {
    await Future.wait<void>([getList(), getBanner()]);
  }

  @override
  loadMoreData(int page) async {
    await getList();
  }
}
