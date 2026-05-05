// # MaterialApp
// `MaterialApp`是Flutter提供的一个Widget,用于构建Material Design风格的应用程序。
// `MaterialApp`常用参数
// - `title`: 应用程序的标题
// - `theme`: 应用程序的主题,用于设置颜色、字体等
// - `home`: 应用程序的首页,用于显示初始内容

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MaterialApp(
    title: "Flutter Hello",
    theme: ThemeData(scaffoldBackgroundColor: Colors.blue),
    home: Scaffold()
  ));
}