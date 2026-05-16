// 布局组件——弹性布局Flex

import 'package:flutter/material.dart';

/**
 * Flex用于弹性布局其子组件的核心布局容器
 * 常用属性
 *  - direction：布局方向，决定主轴的方向
 *      - Axis.horizontal：水平方向
 *      - Axis.vertical：垂直方向
 *  - mainAxisAlignment：主轴对齐方式
 *  - crossAxisAlignment：交叉轴对齐方式
 *  - mainAxisSize：主轴尺寸策略
 *  - children：子组件列表
 */

/// Expanded和Flexible常作为Flex的子组件，用于弹性布局其子组件的组件
/**
 * Expanded会强制其子组件占用剩余空间
 * 常用属性
 *  - flex：（弹性系数）子组件的权重，所有Expanded/Flexible组件以各自flex参数作为比例分配父组件的所有剩余空间
 *  - child：子组件
 */
/**
 * Flexible
 * 常用属性
 *  - flex：弹性系数
 *  - fit：子组件的尺寸策略
 *      首先要说明的是，无论该选项是FlexFit.tight还是FlexFit.loose，该组件都会参与到所有Expanded/Flexible组件的父组件的尺寸分配
 *      - FlexFit.tight：子组件必须沾满父组件的尺寸，效果和Expanded组件相同
 *      - FlexFit.loose：子组件的尺寸可以大于或小于父组件的尺寸，这里空间分配仍然按照flex参数来处理，但是实际不会强制占用到所分配的空间，而是按照子组件的尺寸来占用空间，余下的空间留空
 *  - child：子组件
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
        appBar: AppBar(title: Text('弹性布局Flex'), centerTitle: true),
        body: Container(
          height: double.infinity,
          decoration: BoxDecoration(color: Colors.grey),
          child: Flex(
            direction: Axis.horizontal,
            children: [
              Flexible(
                fit: FlexFit.loose,
                flex: 1,
                child: Container(color: Colors.green, height: 100, width: 100),
              ),
              Expanded(
                flex: 1,
                child: Container(color: Colors.red, height: 100, width: 100),
              ),
              Expanded(
                flex: 2,
                child: Container(color: Colors.blue, height: 100, width: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
