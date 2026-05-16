// 布局组件——流式布局——Wrap

import 'package:flutter/material.dart';

/**
 * Wrap 当子组件在主轴上排列不下时，会自动换行
 * 常用属性
 *  - direction：主轴方向
 *  - spacing：主轴方向上子组件之间的间距
 *  - runSpacing：交叉轴方向上子组件间的间距
 *  - alignment：子组件在主轴上的对齐方式
 *      - WrapAlignment.center：居中对齐
 *      - WrapAlignment.start：左对齐
 *      - WrapAlignment.end：右对齐
 *      - WrapAlignment.spaceAround：子组件左右两边留空相等，也就是子组件之间有两倍间距，首尾两个组件与父组件边界为一倍间距
 *      - WrapAlignment.spaceBetween：子组件之间间距相等，且首尾两个组件和父组件边界重合
 *      - WrapAlignment.spaceEvenly：子组件之间间距相等，且子组件与父组件边界间距相等
 *  - runAlignment：子组件在交叉轴上的对齐方式
 *      参数和alignment相同
 *  - children：子组件
 */

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Wrap'), centerTitle: true),
        body: Container(
          color: Colors.green,
          height: double.infinity,
          width: double.infinity,
          child: Wrap(
            direction: Axis.horizontal,
            // alignment: WrapAlignment.center,
            // alignment: WrapAlignment.start,
            // alignment: WrapAlignment.end,
            // alignment: WrapAlignment.spaceAround,
            // alignment: WrapAlignment.spaceBetween,
            alignment: WrapAlignment.spaceEvenly,
            runAlignment: WrapAlignment.center,
            spacing: 10,
            runSpacing: 10,
            children: getWrapChildren(count: 12),
          ),
        ),
      ),
    );
  }
}

// 为方便，直接单独封装一个方法，用于生成Wrap的子组件
List<Widget> getWrapChildren({int count = 10, Color color = Colors.blue}) {
  return List.generate(
    count,
    (index) => Container(color: color, width: 100, height: 100),
  );
}
