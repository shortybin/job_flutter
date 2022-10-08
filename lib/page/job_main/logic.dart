import 'package:get/get.dart';
import 'package:jw_job_flutter/bean/job_banner.dart';
import 'package:jw_job_flutter/bean/job_feed.dart';
import 'package:jw_job_flutter/http/api_result.dart';
import 'package:jw_job_flutter/http/http_util.dart';

import 'state.dart';

class JobMainLogic extends GetxController {
  final JobMainState state = JobMainState();

  @override
  void onInit() {
    super.onInit();
    getBanner();
    getList();
  }

  void getBanner() async {
    ApiResult<JobBanner> jobBanners = await HttpManager.instance
        .post("position/fairbanner", JobBanner.fromJson);
    if (jobBanners.status == Status.SUCCESS) {
      state.bannerList.addAll(jobBanners.data!.data!);
      state.bannerIsLoop = true;
      update();
    } else {}
  }

  void getList() async {
    ApiResult<JobFeed> apiResult =
        await HttpManager.instance.post("position/jobfeed", JobFeed.fromJson);
    if (apiResult.status == Status.SUCCESS) {
      state.jobFeedList.addAll(apiResult.data!.data!);
      update();
    } else {}
  }
}
