//布局组件——内边距组件Padding

import 'package:flutter/material.dart';

/// Padding：内边距组件
///  常用属性：
///  - padding：内边距
///      - EdgeInsets.all()：同时设置四个方向的内边距
///      - EdgeInsets.only()：分别设置四个方向的内边距
///      - EdgeInsets.symmetric()：分别设置水平方向和垂直方向的内边距
///  - child：子组件
/// Margin：外边距组件

void main(){
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
    return MaterialApp(
        title: 'Padding',
        home: Scaffold(
            appBar: AppBar(
                title: Text('Padding'),
            ),
            body: Container(
                decoration: BoxDecoration(
                    color: Colors.red,
                ),
                // 可以直接设置Container的padding参数来设置内边距
                // padding: EdgeInsets.all(20),
                // 也可以通过Padding组件包裹来实现内边距设置
                child: Padding(
                    // // 同时设置四个方向的内边距
                    // padding: EdgeInsets.all(20),

                    // // 分别设置四个方向的内边距
                    // padding: EdgeInsets.only(
                    //     top: 10,
                    //     left: 20,
                    //     bottom: 20,
                    //     right: 20,
                    // ),
                    // 分别设置水平方向和垂直方向的内边距
                    padding: EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 10,
                    ),
                    child: Container(
                        color: Colors.blue,
                    ),
                ),
            ),
        ),
    );
  }
}