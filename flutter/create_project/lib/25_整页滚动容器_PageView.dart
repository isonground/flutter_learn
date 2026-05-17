// 整页滚动容器——PageView

/**
 * PageView
 * 用于实现分页滚动视图的核心组件
 * 支持懒加载
 * 提供多种构造方式：
 * - 默认构造函数
 * - PageView.builder()
 * PageView绑定对象类型为PageController的Controller控制器属性，可以通过controller.jumpPage/controller.animateToPage方法来控制滚动位置
 */

import 'package:flutter/material.dart';

// 示例通过PageView.builder()在上一个示例基础上实现一个轮播图组件

/// 注意
/// 还有点小bug
/// 翻动轮播图切换页面，轮播图底下页面标注不会随之切换

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 轮播图组件控制器
  PageController _pageController = PageController(initialPage: 0);
  // 轮播图当前页码
  int _currentPage = 0;
  // 轮播图颜色
  Color color = Colors.red;
  // 轮播图数量
  int count = 6;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                // color: Colors.blue,
                alignment: Alignment.center,
                height: 260,
                // 轮播图
                child: PageView.builder(
                  controller: _pageController,
                  scrollDirection: Axis.horizontal,
                  itemCount: count,
                  itemBuilder: (BuildContext context, int index) {
                    return Stack(
                      children: [
                        Container(
                          alignment: Alignment.center,
                          width: double.infinity,
                          height: double.infinity,
                          color: color,
                          child: Text(
                            '轮播图${index + 1}',
                            style: TextStyle(color: Colors.white, fontSize: 24),
                          ),
                        ),
                        Positioned(
                          bottom: 5,
                          left: 0,
                          right: 0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            spacing: 5,
                            children: List.generate(
                              count,
                              (index) => GestureDetector(
                                onTap: (){
                                  // 点击切换轮播图
                                  _pageController.animateToPage(
                                    index,
                                    duration: Duration(seconds: 1),
                                    curve: Curves.easeInOut,
                                  );
                                  // 切换当前页码
                                  setState(() {
                                    _currentPage = index;
                                  });
                                },
                                child: Container(
                                  width: 10,
                                  height: 10,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: index == _currentPage
                                        ? Colors.white
                                        : Colors.grey,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    );
                  },
                ),
              ),
            ),
            SliverToBoxAdapter(child: SizedBox(height: 5)),
            SliverPersistentHeader(
              delegate: _StickyCategory(),
              pinned: true,
            ), // 固定在顶部
            SliverToBoxAdapter(child: SizedBox(height: 5)),
            // // 商品列表(一列)
            // SliverList.separated(
            //   itemCount: 30,
            //   itemBuilder: (BuildContext context, int index) {
            //     return Container(
            //       color: Colors.blue,
            //       alignment: Alignment.center,
            //       child: Text(
            //         '商品${index + 1}',
            //         style: TextStyle(color: Colors.white, fontSize: 24),
            //       ),
            //     );
            //   },
            //   separatorBuilder: (BuildContext context, int index){
            //     return SizedBox(height: 5,);
            //   }
            // ),
            // 商品列表(双列)
            SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: 10,
              crossAxisSpacing: 10,
              children: List.generate(
                50,
                (index) => Container(
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: Text(
                    '商品${index + 1}',
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _StickyCategory extends SliverPersistentHeaderDelegate {
  @override
  // 创建子组件方法
  Widget build(
    BuildContext context,
    double shrinkOffset,
    bool overlapsContent,
  ) {
    // TODO: implement build
    // throw UnimplementedError();
    return Container(
      color: Colors.white,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 100,
            color: Colors.blue,
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              '分类${index + 1}',
              style: TextStyle(color: Colors.white),
            ),
          );
        },
      ),
    );
  }

  @override
  // 最大展开高度
  // TODO: implement maxExtent
  double get maxExtent => 80;

  @override
  // 最小折叠高度
  // TODO: implement minExtent
  double get minExtent => 60;

  @override
  // 是否需要重新构建方法
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    // throw UnimplementedError();
    return false;
  }
}
