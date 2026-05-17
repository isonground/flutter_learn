// 网络请求——小案例

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

// 案例获取了heima的频道数据，并渲染到UI上

/// 1. 创建工具类(这里以及后面几步都是封装Dio工具)
/// 2. 构造函数中设置基础地址和超时时间
/// 3. 添加各类拦截器
/// 4. 封装统一请求方法
/// 5. 请求频道数据进行循环渲染解决web端跨域问题 <暂时没有研究>
/// 6. 实现UI渲染绘制

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 初始化状态，通过initS回车快速创建
  @override
  void initState() {
    super.initState();
    // 发起网络请求
    _getChannels();
  }

  // 定义一个列表，用于存储频道数据
  List<Map<String, dynamic>> _List = [];
  // 封装网络请求方法(通过async/await处理异步请求),获取频道数据
  void _getChannels() async {
    // 创建DioUtils实例
    DioUtils dioUtils = DioUtils();
    // 发起GET请求(这里基础地址已经配置了，只需填写路径即可)
    Response<dynamic> result = await dioUtils.get('channels');
    // 使用断言强制转换为Map<String, dynamic>
    Map<String, dynamic> res = result.data as Map<String, dynamic>;
    // // 打印响应数据
    // print(res);
    // print(res['data']);
    // print(res['data']['channels']);
    // 从响应数据中提取频道数据
    List data = res['data']['channels'] as List;
    // 使用cast方法将List转换为Map<String, dynamic>类型的列表
    _List = data.cast<Map<String, dynamic>>() as List<Map<String, dynamic>>;
    // 刷新UI
    setState() {}
    ;
    print(_List);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('频道管理'), centerTitle: true),
        body: GridView.extent(
          // 滚动方向
          scrollDirection: Axis.vertical,
          // 每个子项交叉轴的最大宽度
          maxCrossAxisExtent: 140,
          // 主轴间距
          mainAxisSpacing: 10,
          // 交叉轴间距
          crossAxisSpacing: 10,
          // 内边距
          padding: EdgeInsets.all(10),
          // 子项的宽高比
          childAspectRatio: 1.5,
          children: List.generate(_List.length, (index) {
            return ChannelItem(item: _List[index]);
          }),
        ),
      ),
    );
  }
}

// 绘制每个频道的UI内容
class ChannelItem extends StatelessWidget {
  final Map<String, dynamic> item;

  const ChannelItem({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: Text(item['name']??'<空>',style: TextStyle(fontSize: 16,color: Colors.white),),
    );
  }
}

// 封装一个工具类
// Dio工具的基本封装
class DioUtils {
  // 定义一个Dio实例
  final Dio _dio = Dio();

  // 默认构造函数
  DioUtils() {
    // // 配置基础地址
    // _dio.options.baseUrl = 'https://geek.itheima.net/v1_0/';
    // // 配置超时时间(这里的时间的数据类型是Duration)
    // _dio.options.connectTimeout = Duration(seconds: 10);   // 连接超时时间
    // _dio.options.receiveTimeout = Duration(seconds: 10);   // 接收超时时间
    // _dio.options.sendTimeout = Duration(seconds: 10);      // 发送超时时间

    // 这种写法和上面的写法是一样的
    _dio.options
      ..baseUrl = 'https://geek.itheima.net/v1_0/'
      ..connectTimeout = Duration(seconds: 10)
      ..receiveTimeout = Duration(seconds: 10)
      ..sendTimeout = Duration(seconds: 10);
    // 注册拦截器
    _addInterceptor();
  }

  // 拦截器
  // 拦截器有3种：请求拦截器、响应拦截器、错误拦截器
  // 其意义分别是：在请求发送前对请求进行处理、在响应返回前对响应进行处理、在请求或响应过程中发生错误时进行处理
  void _addInterceptor() {
    _dio.interceptors.add(
      InterceptorsWrapper(
        // 请求拦截器
        onRequest: (context, handler) {
          // // 放行请求
          // handler.next(requestOptions);
          // // 拦截请求
          // handler.next(ErrorResponse(error));

          // 这里直接放行
          handler.next(context);
        },
        // 响应拦截器
        onResponse: (context, handler) {
          // http状态码
          // 2xx：成功
          // 3xx：重定向
          // 4xx：客户端错误
          // 5xx：服务器错误
          if (context.statusCode! >= 200 && context.statusCode! < 300) {
            // 放行响应
            handler.next(context);
          } else {
            // 拦截响应,抛出异常
            handler.reject(
              DioException(requestOptions: context.requestOptions),
            );
          }
        },
        // 错误拦截器
        onError: (context, handler) {
          // 直接抛出异常
          handler.reject(context);
        },
      ),
    );
  }

  // 向外暴露get方法
  Future<Response<dynamic>> get(String url, {Map<String, dynamic>? params}) {
    return _dio.get(url, queryParameters: params);
  }
}
