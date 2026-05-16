// 自定义滚动容器——CustomScrollView

/**
 * CustomScrollView
 * 常用于组合多个可滚动组件，实现统一协调的滚动效果，同时提供了粘性组件的功能
 * Sliver组件：用于构建自定义滚动容器的组件，提供了丰富的滚动效果和布局选项
 * 常用Sliver组件：
 *  - SliverToBoxAdapter：用于包裹普通组件，将其转换为可滚动组件
 *  - SliverPersistentHeader：用于固定在顶部或底部的组件
 *  - SliverList：用于构建列表组件
 *  - SliverGrid：用于构建网格组件
 *  - SliverAppBar：用于构建应用栏组件
 *  - SliverPadding：用于包裹子组件，设置内边距
 */
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                height: 260,
                child: Text(
                  '轮播图',
                  style: TextStyle(color: Colors.white, fontSize: 24),
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
