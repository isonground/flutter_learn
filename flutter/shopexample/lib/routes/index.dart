// 路由管理
import 'package:flutter/material.dart';
import 'package:shopexample/pages/Main/index.dart';
import 'package:shopexample/pages/Login/index.dart';

// 返回根组件路由
Widget getRootWidget(){
  return MaterialApp(
    initialRoute: '/',
    routes: getAppRoutes(),
  );
}

// 返回App的路由配置
Map<String, WidgetBuilder> getAppRoutes(){
  // 路由配置
  return {
    '/': (context) => const MainPage(),
    '/login': (context) => const LoginPage(),
  };
}