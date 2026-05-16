// 布局组件——线性布局Column

import 'package:flutter/material.dart';

/// Column用于垂直排列其子组件的核心布局容器
/// Column本身不支持滚动和设置宽高
/// Column尽量减少嵌套，防止性能过多消耗
/// 注意明确尺寸约束，父组件大小直接影响Column的最终大小和子组件的布局行为
/// 常用属性
///  - mainAxisAlignment：主轴（垂直方向）对齐方式
///      - MainAxisAlignment.spaceBetween 两头对齐：将子组件在主轴方向上等间距分布，其中起始端和末尾端的子组件无空余间隙
///      - MainAxisAlignment.spaceEvenly 均匀分布：将子组件在主轴方向上等间距分布，其中起始端和末尾端与子组件间隙和子组件之间间隙相等
///      - MainAxisAlignment.start 头对齐：从主轴的起始位置开始依次排列
///      - MainAxisAlignment.end 尾对齐：从主轴的末尾位置开始依次排列
///      - MainAxisAlignment.center 居中对齐：将子组件在主轴方向居中紧密排列
///  - crossAxisAlignment：交叉轴（水平方向）对齐方式
///      - CrossAxisAlignment.center 居中对齐：将子组件在交叉轴方向居中紧密排列
///      - CrossAxisAlignment.start 头对齐：从交叉轴的起始位置开始依次排列
///      - CrossAxisAlignment.end 尾对齐：从交叉轴的末尾位置开始依次排列
///      - CrossAxisAlignment.stretch 拉伸对齐：将子组件在交叉轴方向上强制拉长到与父组件相同长度
///      - CrossAxisAlignment.baseline 基线对齐：将子组件在交叉轴方向上按文本基线对齐，仅适用于Row组件
///  - mainAxisSize：主轴（垂直方向）尺寸策略
///      - MainAxisSize.min 最小尺寸：子组件在主轴方向上最小尺寸，即子组件在主轴方向上尺寸总和，不超出父组件尺寸，当选择这个选项时，mainAxisAlignment参数无效
///      - MainAxisSize.max 最大尺寸：子组件在主轴方向上最大尺寸，即父组件尺寸
///  - children：子组件列表

void main(){
    runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "Column",
        home: Scaffold(
            appBar: AppBar(
                title: Text('Column'),
                centerTitle: true,
            ),
            body: Container(
                // Container组件宽度默认情况下由子组件决定，为了占满父组件宽度，这里可以用infinity填写，即尽可能占满
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.grey,
                ),
                child: Column(
                    // 主轴对齐方式
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    // mainAxisAlignment: MainAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.center,
                    // 交叉轴对齐方式
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    // crossAxisAlignment: CrossAxisAlignment.end,
                    // crossAxisAlignment: CrossAxisAlignment.stretch,
                    // crossAxisAlignment: CrossAxisAlignment.baseline,
                    children: [
                        // 三个方块
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.red,
                        ),
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.green,
                        ),
                        Container(
                            width: 100,
                            height: 100,
                            color: Colors.blue,
                        ),
                    ],
                ),
            ),
        ),
    );
  }
}
