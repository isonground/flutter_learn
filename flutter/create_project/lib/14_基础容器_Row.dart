// 布局组件——线性布局Row

import 'package:flutter/material.dart';

/// Row用于水平排列其子组件的核心布局容器
/// Row本身不支持滚动和设置宽高
/// Row尽量减少嵌套，防止性能过多消耗
/// 注意明确尺寸约束，父组件大小直接影响Row的最终大小和子组件的布局行为
/// 常用属性
///  - mainAxisAlignment：主轴（水平方向）对齐方式
///  - crossAxisAlignment：交叉轴（垂直方向）对齐方式
///  - mainAxisSize：主轴（水平方向）尺寸策略
///  - children：子组件列表

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                // 确保Row组件占满父容器高度
                height: double.infinity,
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    // 交叉轴对齐方式
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                        Container(
                            color: Colors.red,
                            width: 100,
                            height: 100,
                        ),
                        Container(
                            color: Colors.green,
                            width: 100,
                            height: 100,
                        ),
                        Container(
                            color: Colors.blue,
                            width: 100,
                            height: 100,
                        ),
                    ],
                ),
            ),
        ),
    );
  }
}
