// 常量文件
// 使用static定义常量，避免在类外部修改
// 使用const定义常量，避免在运行时修改常量
class GlobalConstants{
  /// 全局常量
  // 基础地址
  static const String baseUrl = 'https://meikou-api.itheima.net';
  // 超时时间(s)
  static const int TIME_OUT = 10;
  // 业务状态码
  static const String SUCCESS = '1';
}

class HttpConstants{
  // 请求地址接口
  static const String BANNER_URL = '/home/banner';
}
