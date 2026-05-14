// 文本输入组件——TextField

/**
 * TextField 用来设置输入框
 * TextField需要在有状态组件中定义
 * 常用属性
 *  - controller: 文本编辑器控制器，用于获取、设置文档内容以及监听变化
 *  - decoration: 输入框的装饰，包括边框、填充颜色、提示文字等
 *  - style: 输入文本样式
 *  - maxLines: 最大输入行数
 *  - onChanged: 输入内容发生变化时执行的回调函数
 *  - onSubmitted: 输入内容提交时执行的回调函数
 */

import 'package:flutter/material.dart';

// 一个登录界面展示

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 定义文本编辑器控制器
  // 账号
  TextEditingController _usernameController = TextEditingController();
  // 密码
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('登录'), centerTitle: true),
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(20),
          child: Column(
            children: [
              TextField(
                // 账号输入框
                controller: _usernameController,
                decoration: InputDecoration(
                    // 填充颜色
                    fillColor: Colors.grey[200],
                    // 允许填充颜色
                    filled: true,
                    // 内容内边距
                    contentPadding: EdgeInsets.only(left: 20),
                    // 边框样式
                    border: OutlineInputBorder(
                        // 圆角
                        borderRadius: BorderRadius.circular(10),
                        // 无边框
                        borderSide: BorderSide.none,
                    ),
                    // 提示文字
                    hintText: '请输入用户名',
                ),
              ),
              // 间距填充
              SizedBox(height: 20),
              TextField(
                // 密码输入框
                controller: _passwordController,
                // 不明文显示输入内容
                obscureText: true,
                decoration: InputDecoration(
                    // 填充颜色
                    fillColor: Colors.grey[200],
                    // 允许填充颜色
                    filled: true,
                    // 内容内边距
                    contentPadding: EdgeInsets.only(left: 20),
                    // 边框样式
                    border: OutlineInputBorder(
                        // 圆角
                        borderRadius: BorderRadius.circular(10),
                        // 无边框
                        borderSide: BorderSide.none,
                    ),
                    // 提示文字
                    hintText: '请输入密码',
                ),
                // 输入内容发生变化时执行的回调函数
                onChanged: (value) {
                  print('密码输入框内容发生变化：$value');
                },
                // 输入内容提交时执行的回调函数
                onSubmitted: (value) {
                  print('密码输入框内容提交：$value');
                },
              ),
              // 间距填充
              SizedBox(height: 20),
              Container(
                height: 50,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.black,
                    // 圆角
                    borderRadius: BorderRadius.circular(10),
                ),
                child: TextButton(
                  onPressed: () {
                    // 打印账号密码
                    print(_usernameController.text);
                    print(_passwordController.text);
                  },
                  child: Text('登录', style: TextStyle(color: Colors.white)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
