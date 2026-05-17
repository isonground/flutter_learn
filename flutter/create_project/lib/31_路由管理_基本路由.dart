// 路由管理——基本路由

/**
 * 路由管理是多页面应用的核心，通过Navigator和Route来管理页面栈，实现页面的跳转和返回
 * 路由管理类似栈的结构
 * 跳转时，会将新页面压入栈中
 * 返回时，会将栈顶页面弹出
 */

import 'package:flutter/material.dart';

/**
 * 基本路由
 * 基本路由适合页面不多，跳转逻辑简单的常见
 * 用法：
 * 无需提前注册路由，只需在跳转时创建MaterialPageRoute实例即可
 * - Navigater.push()跳转新页面
 *  - 参数：
 *    - context：上下文对象，用于获取路由栈
 *    - MaterialPageRoute：路由实例，用于创建新页面
 * - Navigator.pop()返回上一页
 * 注意：由于MaterialApp是路由系统的组件，只能有一个Material包裹
 */

// 下面的示例展示了一个列表页，点击列表中的卡片可以跳转到详情页

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: ListPage());
  }
}

// 列表页
class ListPage extends StatefulWidget {
  const ListPage({super.key});

  @override
  State<ListPage> createState() => _ListPageState();
}

class _ListPageState extends State<ListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('列表页'), centerTitle: true),
      body: ListView.builder(
        itemCount: 10,
        padding: EdgeInsets.all(10),
        itemBuilder: (context, index) {
          return GestureDetector(
            onTap: () {
              print('点击了列表项${index + 1}');
              Navigator.push(
                // 上下文对象，用于获取路由栈
                context,
                // 路由实例，用于创建新页面
                MaterialPageRoute(builder: (context) => DeatailPage()),
              );
            },
            child: Container(
              height: 100,
              margin: EdgeInsets.all(10),
              color: Colors.blue,
              alignment: Alignment.center,
              child: Text(
                '列表项${index + 1}',
                style: TextStyle(fontSize: 16, color: Colors.white),
              ),
            ),
          );
        },
      ),
    );
  }
}

// 详情页
class DeatailPage extends StatefulWidget {
  const DeatailPage({super.key});

  @override
  State<DeatailPage> createState() => _DeatailPageState();
}

class _DeatailPageState extends State<DeatailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('详情页'), centerTitle: true),
      body: Center(
        child: TextButton(
          onPressed: () {
            // print('返回上一页');
            // 返回上一页
            Navigator.pop(context);
          },
          child: Text('返回上一页'),
        ),
      ),
    );
  }
}
