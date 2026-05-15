// 自定义滚动容器——CustomScrollView

/**
 * CustomScrollView
 * 常用于组合多个可滚动组件，实现统一协调的滚动效果
 * Sliver组件：用于构建自定义滚动容器的组件，提供了丰富的滚动效果和布局选项
 */

import 'package:flutter/material.dart';

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
    return Container();
  }
}