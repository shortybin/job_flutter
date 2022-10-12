import 'package:get/get.dart';
import 'package:jw_job_flutter/base/page_state.dart';
import 'package:pull_to_refresh_flutter3/pull_to_refresh_flutter3.dart';

abstract class PagingController<M, S extends PagingState<M>>
    extends GetxController {
  /// PagingState
  late S pagingState;

  /// 刷新控件的 Controller
  RefreshController refreshController = RefreshController();

  @override
  void onInit() {
    super.onInit();

    /// 保存 State
    pagingState = getState();
  }

  @override
  void onReady() {
    super.onReady();

    /// 进入页面刷新数据
    onRefresh();
  }

  /// 刷新数据
  onRefresh() async {
    initPaging();
    await refreshData();

    /// 刷新完成
    refreshController.refreshCompleted();
  }

  ///初始化分页数据
  void initPaging() {
    pagingState.pageIndex = 1;
    pagingState.afterId = 0;
    pagingState.hasMore = true;
    pagingState.listData.clear();
  }

  /// 数据加载
  refreshData();

  /// 加载更多
  onLoading() async {
    await loadMoreData(pagingState.pageIndex);

    /// 加载完成
    refreshController.loadComplete();
  }

  loadMoreData(int page);

  /// 获取 State
  S getState();
}
