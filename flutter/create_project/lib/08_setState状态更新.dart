// 状态更新
import 'package:flutter/material.dart';

/**
 * 状态更新setState
 * flutter中有两种组件：有状态组件和无状态组件
 * 有状态组件的状态可以更新，无状态组件的状态不能更新，只能通过父组件传递数据
 * setState方法是组件内置的方法，用于更新组件的状态，触发组件的重新构建build()方法
 * */


void main() {
    runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}


// 制作一个有加减两个按键的简单界面，按下加或减，数字显示会对应加1或减1
class _MainPageState extends State<MainPage> {
  // 在类中定义一个状态变量count用于存储当前计数
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        // 三个组件
        body: Center(
          child: Row(
          children: [
            TextButton(onPressed: (){
              // 使用setState方法更新状态变量count，触发组件的重新构建build()方法，刷新界面中显示的数字
              setState(
                (){
                  count--;
                  print(count);
                }
              );
            }, child: Text("减")),
            Text(count.toString()),
            TextButton(onPressed: (){
              // 使用setState方法更新状态变量count，触发组件的重新构建build()方法，刷新界面中显示的数字
              setState(
                (){
                  count++;
                  print(count);
                }
              );
            }, child: Text("加")),
            ],
          ),
        ),
      ),
    );
  }
}
