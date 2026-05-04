// # 无状态组件 StatelessWidget
// `Stateless`组件是Flutter提供的一个组件,用于构建无状态的Widget。
// 为单个类，一旦创建，内部状态不可更改（外观由配置参数决定，也就是说外部参数变化时，组件会重新构建）
// 无状态组件时纯展示型组件，没有用户交互操作

// 定义：创建类继承`StatelessWidget`，并实现`build`方法
// `build`方法用于构建组件的内容，返回一个`Widget`对象
// `build`方法的参数`context`是当前组件的上下文，用于获取组件的环境信息，如屏幕尺寸、主题等

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// 下面通过创建一个无状态组件，重写类的build方法，自定义组件内容，实现无状态组件的功能

// 创建类
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "flutter-无状态组件",
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
            ),
        ),
    );
  }
}