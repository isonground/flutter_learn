// 布局组件——居中组件Center

// 居中组件Center
// 居中组件Center可以将子组件居中显示在父组件的中心位置
/**
 * Center没有宽高属性，其大小取决于父组件大小
 * Center会尽量占满父组件的大小
 * 然后把子组件居中显示在中心位置
 * 通常通过在Center中嵌套一个Container来自定义子组件的具体样式
 */

import 'package:flutter/material.dart';

void main(){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
                title: Text('Center'),
                // 标题居中
                centerTitle: true,
            ),
            body: Center(
                // 在Center中定义子组件
                child: Container(
                    width: 200,
                    height: 200,
                    // // 子组件居中显示在中心位置
                    // alignment: Alignment.center,
                    child: Center(
                        // 利用Center将子组件居中显示在中心位置
                        child: Text(
                            'Center',
                            style: TextStyle(color: Colors.white),
                        ),
                    ),
                    decoration: BoxDecoration(
                        color: Colors.red,
                    ),
                ),
            ),
        ),
    );
  }
}
