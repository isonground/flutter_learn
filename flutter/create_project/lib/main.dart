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

// Expanded
/**
 * Expanded用于弹性布局其子组件的组件
 * 常用属性
 *  - flex：子组件的权重，权重越大，子组件的尺寸就越大
 *  - child：子组件
 */

// Flexible

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('弹性布局Flex'),
                centerTitle: true,
            ),
            body: Container(
                height: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey,
                ),
                child: Flex(
                    direction: Axis.horizontal,
                    children: [
                        Expanded(
                            flex: 1,
                            child: Container(
                                color: Colors.red,
                                height: 100,
                                width: 100,
                            ),
                        ),
                        Expanded(
                            flex: 2,
                            child: Container(
                                color: Colors.blue,
                                height: 100,
                                width: 100,
                            ),
                        ),
                    ],
                ),
            ),
        ),
    );
  }
}
