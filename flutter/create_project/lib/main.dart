// 状态更新
/**
 * 状态更新setState
 * setState方法用于更新组件的状态，触发组件的重新构建
 * */

import 'package:flutter/material.dart';

void main() {
    runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

// 组件点击事件
/**
 * 组件点击事件
 * Flutter提供了多种方式为组件添加点击交互，包括但不限于：
 * 专用按钮组件：ElevatedButton TextButton OutlineButton FloatingActionButton
 * 视觉反馈组件：InkWell
 * 其他交互组件：IconButton Switch Checkbox
 * 这些按键内置点击动画，点击时会触发动画效果
 * 有不同交互效果，通过特定函数完成点击回调
 * 
 * 比如TextButton组件，点击时会触发动画效果，同时会调用onPressed函数
 * */
class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '点击事件',
      home: Scaffold(
        appBar: AppBar(
          title: Text('点击事件'),
        ),
        body: Container(
          child: TextButton(onPressed: (){
            print('点击了');
          }, child: Text('点击我')),
        ),
      ),
    );
  }
}
