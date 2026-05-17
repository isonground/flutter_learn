// 组件通信——父传子——小案例

import 'package:flutter/material.dart';

/// 案例实现了一个类似网购APP的商品列表布局
/// 其中页面部分放在父组件中
/// 具体商品布局封装成了一个子组件，提供了商品内容接口
/// 父组件定义一个String列表，作为参数传入子组件
/// 子组件接收参数显示内容

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> _List = ['商品1','商品2','商品3','商品4','商品5','商品6','商品7',];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(_List.length,
            (index) => ChildPage(message: _List[index]),
          ),
        ),
      ),
    );
  }
}

class ChildPage extends StatefulWidget {
  final String message;
  const ChildPage({super.key, required this.message});

  @override
  State<ChildPage> createState() => _ChildPageState();
}

class _ChildPageState extends State<ChildPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(
        widget.message,
        style: TextStyle(color: Colors.white, fontSize: 20),
      ),
    );
  }
}