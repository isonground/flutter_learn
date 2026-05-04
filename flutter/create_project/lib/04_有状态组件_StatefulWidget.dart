// # 有状态组件 StatefulWidget
// 有状态组件是构建动态交互界面的核心，能管理变化的内部状态
// 状态发生改变时，组件会重新构建，显示最新的状态值

// 实现：
// 1. 创建类继承`StatefulWidget`，用以接收和定义最终参数，核心作用是创建State对象实例
// 2. 创建类继承`State<上面创建的类的类名>`，用以管理组件的状态（即可变的数据和业务逻辑）
// 3. 第二个类需要实现`build`方法，核心作用是定义组件的UI和交互逻辑
// 4. `build`方法返回一个Widget对象
// 5. `StatefulWidget`类的`createState`方法返回一个`State`对象实例，用于管理组件的状态（即可变的数据和业务逻辑）

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MyApp());
}

// 有状态组件的StatefulWidget类
class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState(){
    // 返回创建的State对象实例
    return _MyAppState();
  }
}

// 有状态组件的State类一般定义成私有类
class _MyAppState extends State<MyApp> {
  Widget build(BuildContext context) {
    return MaterialApp(
        title: "flutter-有状态组件",
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