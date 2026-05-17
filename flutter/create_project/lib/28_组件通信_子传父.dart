// 组件通信——子传父

/**
 * 步骤
 * 1. 父组件传递一个函数给子组件
 * 2. 子组件调用该函数
 * 3. 父组件通过该回调函数获取参数
 * 实际上，子传父的逻辑和父传子是一致的
 * 父传子中，子组件通过定义一个属性接收父组件传入的参数，通过读取这个属性实现使用
 * 子传父中，子组件通过定义一个函数类型的属性接收父组件传入的回调函数，通过在需要的时候调用这个函数实现向父组件的参数传递
 * 两者一个是一般的属性，一个是函数类型的属性
 */

import 'package:flutter/material.dart';

// 基于上一节父传子的小案例，通过在商品列表的每个商品卡片右上角添加一个删除图标，点击可以删除对应商品

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List<String> _List = ['商品1', '商品2', '商品3', '商品4', '商品5', '商品6', '商品7'];
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: GridView.count(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10,
          children: List.generate(
            _List.length,
            (index) => ChildPage(message: _List[index], onDelete: (){
              // 删除对应商品
              print('删除商品${_List[index]}');
              _List.removeAt(index);
              // 调用setState方法重新构建实现界面刷新
              setState((){});
            }),
          ),
        ),
      ),
    );
  }
}

class ChildPage extends StatefulWidget {
  final String message;
  // 声明一个函数类型属性接收父组件的回调函数
  final Function onDelete;
  const ChildPage({super.key, required this.message, required this.onDelete});

  @override
  State<ChildPage> createState() => _ChildPageState();
}

class _ChildPageState extends State<ChildPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topRight,
      children: [
        Container(
          color: Colors.blue,
          alignment: Alignment.center,
          child: Text(
            widget.message,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ),
        // 使用Icon绘制删除图标
        IconButton(
          onPressed: () {
            // 调用父组件的回调函数，传递当前商品的索引，删除对应商品
            widget.onDelete();
          },
          color: Colors.white,
          icon: Icon(Icons.delete),
        ),
      ],
    );
  }
}
