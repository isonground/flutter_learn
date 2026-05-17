// 组件通信——父传子——基本操作

import 'package:flutter/material.dart';

/**
 * 步骤
 * 1. 子组件定义接收属性
 * 2. 子组件在构造函数中接收参数
 * 3. 父组件传递属性值给子组件
 * 4. 有状态组件在“对外的类”接收属性，“对内的类”通过widget对象获取对应属性
 * 注意：子组件定义接收属性需要使用final关键字，因为属性由父组件决定，子组件不能随意更改
 */

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '父组件',
                style: TextStyle(color: Colors.blue, fontSize: 20),
              ),
              ChildPage(message: 10),
            ],
          ),
        ),
      ),
    );
  }
}

// 子组件定义

/// 要实现父组件向子组件传递参数，这里通过子组件的属性和构造函数实现
/// 子组件的构造函数使用了const关键字修饰，需要传参的属性使用了final修饰
/// 这并非强制规定
/// 实际上，使用一般的无final修饰的变量加无const修饰的构造函数也可以实现参数传递
/// 但是，这样的参数可以在子组件中被修改
/// Flutter中有一条铁律：
/// Flutter Widget 是不可变的（immutable），即一旦创建出来，就不能修改里面的属性。
/// 所以，在子组件中，不应该能直接修改message属性的值
/// 同时，正常情况下编写组件的构造函数也应该使用const关键字修饰
/// 使用const修饰的构造函数，其传入参数不能是变量，故保存传入参数的值对应的属性也应该使用final关键字修饰


// // 无状态组件的子组件
// class ChildPage extends StatelessWidget{
//   final int? message;

//   const ChildPage({super.key, required this.message});

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     // throw UnimplementedError();
//     return Container(
//       alignment: Alignment.center,
//       child: Text(
//         '子组件${message}',
//         style: TextStyle(color: Colors.red, fontSize: 18),
//       ),
//     );
//   }
// }

// 有状态组件的子组件
class ChildPage extends StatefulWidget {
  // 在对外的类定义属性接收需要的参数
  final int? message;

  const ChildPage({super.key, required this.message});

  @override
  State<ChildPage> createState() => _ChildPageState();
}

class _ChildPageState extends State<ChildPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Text(
        // 在对内的类中通过widget对象获取父组件传递的参数值
        '子组件${widget.message}',
        style: TextStyle(color: Colors.red, fontSize: 18),
      ),
    );
  }
}
