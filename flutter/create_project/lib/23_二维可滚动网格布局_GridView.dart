// 二维可滚动网格布局——GridView

/**
 * GridView
 * 可以设置在水平或者垂直方向上滚动的网格布局
 * 提供了多种构建方式：
 * 其默认构造函数写起来颇为繁琐，一般比较少用
 *  - GridView.count：基于固定列数的网格布局
 *    属性：
 *      - scrollDirection：主轴方向
 *      - crossAxisCount：网格列数
 *      - mainAxisSpacing：主轴方向上的间距
 *      - crossAxisSpacing：侧轴方向上的间距
 *      - childAspectRatio：子项的宽高比  
 *  - GridView.extent：基于固定宽度/高度的网格布局
 *    属性：
 *      - scrollDirection：主轴方向
 *      - mainAxisExtent：单个子组件最大宽度/高度
 *      - crossAxisSpacing：侧轴方向上的间距
 *      - childAspectRatio：子项的宽高比  
 *  - GridView.builder：采用懒加载的方式，基于动态数量数据的网格布局，适用于动态数量数据的场景
 *    相对前面两个构造方式，把构造相关参数都放在gridDelegate参数中，其参数为一个SliverGridDelegate对象
 *      - SliverGridDelegateWithFixedCrossAxisCount：基于固定列数/行数的网格布局
 *        属性：
 *          - scrollDirection：主轴方向
 *          - crossAxisCount：网格列数
 *          - mainAxisSpacing：主轴方向上的间距
 *          - crossAxisSpacing：侧轴方向上的间距
 *          - childAspectRatio：子项的宽高比  
 *      - SliverGridDelegateWithFixedCrossAxisExtent：基于固定宽度/高度的网格布局
 *        属性：
 *          - mainAxisExtent：主轴方向上的高度
 *          - crossAxisSpacing：侧轴方向上的间距
 *          - childAspectRatio：子项的宽高比  
 */

import 'package:flutter/material.dart';

/// 示例分别演示GridView.count、GridView.extent、GridView.builder构造方式的使用，使用其中一种构造方式时，需要注释其他两种方式的代码。

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
        // // GridView.count构造
        // body: GridView.count(
        //   // 主轴方向
        //   scrollDirection: Axis.vertical,
        //   // 网格列数/行数
        //   crossAxisCount: 3,
        //   // 主轴方向上的间距
        //   mainAxisSpacing: 10,
        //   // 交叉轴方向上间距
        //   crossAxisSpacing: 10,
        //   children: List.generate(
        //     100,
        //     (index) => Container(
        //       margin: EdgeInsets.all(10),
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       // height: 100,
        //       child: Text(
        //         '第${index + 1}项',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 20,
        //         ),
        //       ),
        //     ),
        //   ),
        // ),

        // // GridView.extent构造
        // body: GridView.extent(
        //   // 单个子组件最大宽度/高度
        //   maxCrossAxisExtent: 100,
        //   children: List.generate(100, (int index) {
        //     return Container(
        //       margin: EdgeInsets.all(10),
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       child: Text(
        //         '第${index + 1}项',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 20,
        //         ),
        //       ),
        //     );
        //   }),
        // ),

        // GridView.builder构造
        body: GridView.builder(
          // 主轴方向
          scrollDirection: Axis.vertical,
          // 布局委托
          // // 按交叉轴固定数量布局
          // gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          //   // 交叉轴子部件数量
          //   crossAxisCount: 4,
          //   // 主轴方向上的间距
          //   mainAxisSpacing: 10,
          //   // 交叉轴方向上的间距
          //   crossAxisSpacing: 10,
          //   // 子项的宽高比
          //   childAspectRatio: 1.0,
          // ),
          // 按主轴固定宽度布局
          gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
            // 单个子组件最大宽度/高度
            maxCrossAxisExtent: 100,
            // 主轴方向上的间距
            mainAxisSpacing: 10,
            // 侧轴方向上的间距
            crossAxisSpacing: 10,
            // 子项的宽高比
            childAspectRatio: 1.0,
          ),
          // 列表项数量
          itemCount: 100,
          // 构建子项的回调函数
          itemBuilder: (BuildContext context, int index) {
            return Container(
              margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              width: double.infinity,
              child: Text(
                '第${index + 1}项',
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            );
          },
        ),
      ),
    );
  }
}
