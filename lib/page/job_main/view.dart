import 'package:card_swiper/card_swiper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jw_job_flutter/widget/SliverHeaderDelegate.dart';

import 'logic.dart';

class JobMainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final logic = Get.find<JobMainLogic>();
    final state = Get.find<JobMainLogic>().state;
    return Scaffold(
      appBar: AppBar(),
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: AspectRatio(
                aspectRatio: 16 / 9,
                child: Swiper(
                  itemCount: 5,
                  autoplay: true,
                  itemBuilder: (BuildContext context, int index) {
                    return Image.network(
                      "http://s.laoyaoba.com/jwImg/slideItem/2022/09/16/16633245115463.jpg",
                      fit: BoxFit.fill,
                    );
                  },
                  pagination: SwiperPagination(),
                )),
          ),
          SliverPersistentHeader(
              pinned: true,
              delegate: SliverHeaderDelegate(
                  maxHeight: 120,
                  minHeight: 120,
                  child: Container(
                      color: Colors.white,
                      height: 120,
                      child: Column(
                        children: [
                          Container(
                            height: 40,
                            width: double.infinity,
                            margin: EdgeInsets.all(15),
                            decoration: BoxDecoration(
                                border:
                                    Border.all(color: Colors.black, width: 1),
                                borderRadius: BorderRadius.circular(20)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Padding(padding: EdgeInsets.only(left: 10)),
                                Icon(Icons.search),
                                Padding(padding: EdgeInsets.only(left: 5)),
                                Text("搜索职位和公司")
                              ],
                            ),
                          ),
                          _TabBar(state.tabs)
                        ],
                      )))),
          SliverList(
              delegate:
                  SliverChildBuilderDelegate(childCount: 100, (context, index) {
            return Text(index.toString());
          }))
        ],
      ),
    );
  }
}

class _TabBar extends StatefulWidget {
  List _list;

  _TabBar(List this._list, {Key? key}) : super(key: key);

  @override
  State<_TabBar> createState() => _TabBarState(_list);
}

class _TabBarState extends State<_TabBar> with SingleTickerProviderStateMixin {
  List _list;

  _TabBarState(List this._list);

  late TabController controller;

  @override
  void initState() {
    super.initState();
    controller = TabController(length: _list.length, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.only(left: 15, right: 15),
      child: TabBar(
        labelPadding: EdgeInsets.only(left: 5, right: 5),
        isScrollable: true,
        controller: controller,
        indicatorSize: TabBarIndicatorSize.label,
        tabs: _list
            .map((e) => Tab(
                  child: Text(
                    e,
                    style: TextStyle(color: Colors.black),
                  ),
                ))
            .toList(),
        onTap: (index) {
          print("选择了$index");
        },
      ),
    );
  }
}
