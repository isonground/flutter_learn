void main(){
  // // var 变量，在第一次赋值后类型被确定，后续改变变量值不能改变类型
  // var age = 18;
  // print(age);
  // age = 20;
  // print(age);


  // const 常量，在编译时确定，后续不能改变
  const pi = 3.1415926;
  var length = 2 * pi * 10;
  print(length);

  // // 不能把变量赋值给const常量，该类型在编译时就确定
  // // var radius = 5.0;
  // // const area = pi * radius * radius;

  // final 常量
  final name = '张三';
  print(name);

  // 相比const常量，final常量在运行时确定，后续不能改变，故可以把变量赋值给final常量
  // 使用final常量打印当前事件
  final time = DateTime.now();
  print(time);
}