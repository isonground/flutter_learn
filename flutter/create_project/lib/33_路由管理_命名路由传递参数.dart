// 路由管理——命名路由传递参数

/**
 * 传递参数：
 * Navigator.pushNamed(context, 地址, arguments: {参数})
 * 接收参数：
 * ModalRoute.of(context)?.settings.arguments
 * 接收时机：
 * 在initState中获取不到路由参数，放置在Future.microtask(异步微任务)中获取
 */

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
              Navigator.pushNamed(
                context,
                '/Deatail',
                // 传递参数
                arguments: {'id': index + 1},
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
  // 接收参数
  String _id = '';
  @override
  void initState() {
    super.initState();
    // 使用微任务获取路由参数
    Future.microtask(() {
      // 接收参数
      if (ModalRoute.of(context) != null) {
        Map<String, dynamic> prama =
            ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
        _id = prama['id'].toString();
        setState(() {});
      } else {
        print('获取到路由参数为空');
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // 使用参数
        title: Text('详情页$_id'),
        centerTitle: true,
      ),
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
