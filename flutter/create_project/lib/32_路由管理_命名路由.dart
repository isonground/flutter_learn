// 路由管理——命名路由

/// 应用页面增多后，使用命名路由可以提升代码可维护性
/// 用法：
/// 在MaterialApp中注册路由表(routes)并设置首页(initialRoute)
/// 在跳转时除了Navigator.push()和Navigator.pop()，还可以使用Navigator.pushNamed()来跳转路由
/// 常用跳转方法：
/// - Navigator.pushNamed()：进入新页面
/// - Navigator.ReplacementNamed()：替换当前页
/// - Navigator.pushNamedAndRemoveUntil()：跳转到新页面并清理页面栈
/// - Navigator.popAndPushNamed()：返回并立即跳转新页面
/// - Navigator.popUntil()：连续返回直到条件满足

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    // 注册路由表(routes)
    return MaterialApp(
      // 首页(initialRoute)
      initialRoute: '/List',
      // 路由表(routes)
      routes: {
        '/List': (context) => ListPage(),
        '/Deatail': (context) => DeatailPage(),
      },
      home: ListPage(),
    );
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
              Navigator.pushNamed(context, '/Deatail');
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
        child: Column(
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/List');
              },
              child: Text('返回列表页'),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text('返回上一页'),
            ),
          ],
        ),
      ),
    );
  }
}
