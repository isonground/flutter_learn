// 网络请求——Dio插件——基本使用测试

/// 网络请求通过使用Dio插件实现
/// Dio插件是一个基于Dart的网络请求库，它提供了简单而强大的网络请求功能
/// 安装Dio插件
/// 方法1：flutter pub add dio 注意：需要在工程目录下执行
/// 方法2：在pubspec.yaml文件中添加依赖（dio:^0.19.0），但是一般使用过程中是不知道版本号的，最好只用方法1

import 'package:dio/dio.dart';

/**
 * 基本使用
 * 首先要导入Dio插件
 * 基本GET请求命令
 * Dio().get().then().catchError()
 * - get()方法用于发送GET请求
 * - then()方法用于处理成功响应
 * - catchError()方法用于处理错误响应
 */

void main(List<String> args) {
  Dio()
      .get('https://geek.itheima.net/v1_0/channels')
      .then((res) {
        print(res.data);
      })
      .catchError((err) {});
}
