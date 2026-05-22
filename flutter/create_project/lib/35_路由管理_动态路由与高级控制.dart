// 路由管理——动态路由与高级控制

/**
 * 对于更复杂的场景
 * 如需根据参数动态生成页面，或使用路由拦截
 * 可以使用onGenerateRoute和onUnknownRoute
 */

import 'package:flutter/material.dart';

/**
 * onGenerateRoute
 * 用于根据RouteSettings路由参数动态生成路由实例
 */

/**
 * onUnknownRoute
 * 对于既未在routes中注册，也没有在onGenerateRoute中处理的路由
 * 会调用此回调，返回一个404页面
 */

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/goodsList',
      routes: {'/goodsList': (context) => GoodsListPage()},
      onGenerateRoute: (settings) {
        // // 这里跳转到所有没有在routes中的注册的路由都会调用该函数，settings.name就是对应路由参数名
        // print(settings.name);
        if (settings.name == '/cartList') {
          // 如果要跳转到登录页面
          bool isLogin = true; // 这里暂时设置一个登录状态变量测试用
          // 如果登录了，就跳转到购物车页
          if (isLogin) {
            return MaterialPageRoute(builder: (context) => CartList());
          }
          // 否则去登录页
          else {
            return MaterialPageRoute(builder: (context) => LoginPage());
          }
        }
      },
      // 404页面
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (context) => NotFoundPage());
      },
    );
  }
}

class GoodsListPage extends StatefulWidget {
  const GoodsListPage({super.key});

  @override
  State<GoodsListPage> createState() => _GoodsListPageState();
}

class _GoodsListPageState extends State<GoodsListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('商品列表'), centerTitle: true),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextButton(
              onPressed: () {
                Navigator.pushNamed(context, '/cartList');
              },
              child: Text('加入购物车'),
            ),
            TextButton(
              onPressed: () {
                // 路由到不存在的路由，触发404页面
                Navigator.pushNamed(context, '/123');
              },
              child: Text('404触发演示'),
            ),
          ],
        ),
      ),
    );
  }
}

// 购物车页
class CartList extends StatefulWidget {
  const CartList({super.key});

  @override
  State<CartList> createState() => _CartListState();
}

class _CartListState extends State<CartList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('购物车'), centerTitle: true),
      body: Center(child: Text('去结算')),
    );
  }
}

// 登录页
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('登录'), centerTitle: true),
      body: Center(child: Text('登录')),
    );
  }
}

// 404页面
class NotFoundPage extends StatelessWidget {
  const NotFoundPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child:Center(
        child: Text('404 Not Found'),
      ),
    );
  }
}
