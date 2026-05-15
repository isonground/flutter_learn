// 常用滚动组件——可滚动列表——ListView

/**
 * ListView
 * 用于构建可滚动列表，可以采用懒加载（按需渲染）的方式，只后见当前可见区域的列表项，相比SingleChildScrollView更省内存，极大提高性能
 * ListView支持多种构造函数方式：
 *  - 默认构造函数采用一次性构建所有表项的方式，非懒加载，适用于静态数量有限数据
 *  - ListView.builder:采用按需渲染的方式，只后见当前可见区域的列表项，适用于动态数量数据
 *    - itemCount：列表项数量
 *    - itemBuilder：构建列表项的回调函数
 *      - 参数：context, index
 *        - context：构建上下文
 *        - index：列表项索引
 *      - 返回值：Widget
 *  - ListView.separated:相比ListView.builder，添加了一个separatorBuilder属性，是一个回调函数，用来自定义两个子组件之间的分割线
 */

import 'package:flutter/material.dart';

/// 本示例分别尝试了使用三种构造方式来构建一个滚动列表，使用每种方式时请注意把另外两种方式注释掉

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
        // // 使用默认构造
        // body: ListView(
        //   scrollDirection: Axis.vertical,
        //   controller: _scrollController,
        //   children: List.generate(
        //     100,
        //     (index) => Container(
        //       margin: EdgeInsets.all(10),
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       height: 100,
        //       width: double.infinity,
        //       child: Text(
        //         '第${index + 1}项',
        //       ),
        //     ),
        //   ),
        // ),

        // // 使用ListView.builder构造
        // body: ListView.builder(
        //   // 列表项数量
        //   itemCount: 100,
        //   // 构建列表项的回调函数
        //     // context:构建上下文
        //     // index:列表项索引
        //   itemBuilder: (BuildContext context, int index){
        //     return Container(
        //       margin: EdgeInsets.all(10),
        //       alignment: Alignment.center,
        //       decoration: BoxDecoration(
        //         color: Colors.blue,
        //         borderRadius: BorderRadius.circular(10),
        //       ),
        //       height: 100,
        //       width: double.infinity,
        //       child: Text(
        //         '第${index + 1}项',
        //         style: TextStyle(
        //           color: Colors.white,
        //           fontSize: 20,
        //         ),
        //       ),
        //     );
        //   }
        // ),

        // 使用ListView.separated构造
        body: ListView.separated(
          // 构建列表项的回调函数
          itemBuilder: (BuildContext context, int index){
            return Container(
              // margin: EdgeInsets.all(10),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: Colors.blue,
                // borderRadius: BorderRadius.circular(10),
              ),
              height: 100,
              width: double.infinity,
              child: Text(
                '第${index + 1}项',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                ),
              ),
            );
          },
          // 构建分隔符的回调函数
          separatorBuilder: (BuildContext context, int index){
            return Container(
              height: 10,
              color: Colors.green,
            );
          },
          // 列表项数量
          itemCount: 100,
        ),
      ),
    );
  }
}
