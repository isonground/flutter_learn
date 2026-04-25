void main(){
  // int 整数类型, 用于表示整数
  int age = 18;
  print(age);
  print('我今年$age岁');
  // num 数字类型, 用于表示整数和浮点数
  num number = 10.0;
  num age1 = 18;
  print('我今年$age1岁, 我有$number元');
  // double 浮点数类型, 用于表示浮点数
  double height = 1.8;
  print(height);
  print('我身高$height米');
  
  // 类型间赋值与转换
  // int 可以直接赋值给 num
  num age2 = age;
  print('我今年$age2岁');
  // int 不能直接赋值给 double, 需要使用方法转换
  double age3 = age.toDouble();
  print('我今年$age3岁');
  // double 不能直接赋值给 int, 需要使用方法转换, 转换时会丢失小数部分
  int age4 = age3.toInt();
  print('我今年$age4岁');
  // double 可以直接赋值给 num
  num age5 = age3;
  print('我今年$age5岁');
  // num 不能直接赋值给 double, 需要使用方法转换
  double age6 = age5.toDouble();
  print('我今年$age6岁');
  // num 不能直接赋值给 int, 需要使用方法转换, 转换时会丢失小数部分
  int age7 = age5.toInt();
  print('我今年$age7岁');
}