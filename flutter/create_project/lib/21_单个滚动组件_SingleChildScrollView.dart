// 常用滚动组件——单个滚动组件——SingleChildScrollView

/**
 * SingleChildScrollView
 * 包裹一个子组件，让单个子组件可以滚动，所有内容一次性渲染，适用于长表单、设置页、内容固定但是总量不多的页面
 * 注意，该组件只能包裹一个子组件，利用Column、Row等组件可以实现多个子组件的滚动
 * 常用属性：
 *  - scrollDirection：滚动方向
 *    - Axis.vertical：垂直滚动（默认值）
 *    - Axis.horizontal：水平滚动
 */

import 'package:flutter/material.dart';

/// 演示工程，使用ScrollChild组件包裹Cloumn组件，创建了100个子组件，实现滚动效果
/// 同时通过Stack组件添加顶部和底部按键，点击后分别滚动到顶部和底部
/// 回滚部分代码写完后如果实际调试运行没有实现对应效果可以刷新浏览器重试一遍
/// 演示了两种方式实现滚动到指定位置：jumpTo和animateTo
/// jumpTo：直接跳转到指定位置，不支持动画效果，用起来简单
/// animateTo：支持动画效果，用起来比较复杂，需要设置动画时间、曲线等参数
void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  ScrollController _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: [
            SingleChildScrollView(
              controller: _scrollController,
              scrollDirection: Axis.vertical,
              child: Column(
                children: List.generate(
                  100,
                  (index) => Container(
                    height: 100,
                    width: double.infinity,
                    color: Colors.blue,
                    child: Text(
                      '第${index + 1}项',
                      style: TextStyle(color: Colors.white, fontSize: 20),
                    ),
                    alignment: Alignment.center,
                    // 设置外边距
                    margin: EdgeInsets.all(10),
                  ),
                ),
              ),
            ),
            // 回到顶部按钮
            Positioned(
              top: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  // 滚动到顶部
                  print("滚动到顶部");
                  if (_scrollController.hasClients) {
                    // _scrollController.jumpTo(0);
                    _scrollController.animateTo(
                      // 滚动到指定位置
                      0,
                      // 动画时间
                      duration: Duration(seconds: 1),
                      // 动画曲线
                      curve: Curves.ease,
                    );
                  }
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "顶部",
                    style: TextStyle(color: Colors.white, fontSize: 20),
                  ),
                ),
              ),
            ),
            // 回到底部按钮
            Positioned(
              bottom: 20,
              right: 20,
              child: GestureDetector(
                onTap: () {
                  // 滚动到底部
                  print("滚动到底部");
                  if (_scrollController.hasClients) {
                    _scrollController.jumpTo(
                      _scrollController.position.maxScrollExtent,
                    );
                  }
                },
                child: Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.green,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    "底部",
                    style: TextStyle(color: Colors.white, fontSize: 20),
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
