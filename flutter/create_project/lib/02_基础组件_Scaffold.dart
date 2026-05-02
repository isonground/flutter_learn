// # Scaffold
// `Scaffold`是Flutter提供的一个Widget,用于构建Material Design风格的Scaffold。
// `Scaffold`常用参数
// - `appBar`: 应用程序的AppBar,用于显示应用的标题、操作按钮等
// - `body`: 应用程序的主体内容,用于显示应用的主要内容
// - `bottomNavigationBar`: 应用程序的底部导航栏,用于显示应用的底部操作按钮等
// -  `backgroundColor`: 应用程序的背景颜色
// - `floatingActionButton`: 应用程序的浮动操作按钮,用于显示应用的浮动操作按钮等
// - `drawer`: 应用程序的抽屉,用于显示应用的导航菜单等

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "flutter-Scaffold",
    // theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
    home: Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("头部区域"),
      ),
      body: Container(
        child: Center(
          child: Text("主体内容"),
        ),
      ),
      bottomNavigationBar: Container(
        height: 80,
        child: Center(
          child: Text("底部导航栏"),
        )
      )
    )
  ));
}