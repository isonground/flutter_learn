// 基于Dio封装的网络请求工具类

import 'package:dio/dio.dart';
import 'package:shopexample/constants/index.dart';

class DioRequest{
  final _dio = Dio();
  DioRequest(
    _dio.options..baseUrl = GlobalConstants.baseUrl
  );
}

// 单例对象
final DioRequest dioRequest = DioRequest();
