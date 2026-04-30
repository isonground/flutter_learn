void main(){
  // String类型，文本变量类型
  String text = 'hello world';
  print(text);

  // 字符串的拼接

  // 模板字符串
  // 模板字符串中可以使用变量或表达式，变量的值会被替换到模板字符串中
  // 变量或表达式用${*}表示
  String content = "我要在${DateTime.now()}吃饭";
  print(content);
  // 单独变量可以省略{}
  String name = '张三';
  print("我和$name在吃饭");
}