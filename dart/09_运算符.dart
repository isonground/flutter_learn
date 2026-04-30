void main(){
  // 算数运算符
  int a = 10;
  int b = 2;
  int c = a + b;  // 加
  print(c);
  c = a - b;  // 减
  print(c);
  c = a * b;  // 乘
  print(c);
  c = (a / b).toInt();  // 除
  print(c);
  c = a ~/ b;  // 整除
  print(c);
  c = a % b;  // 取余
  print(c);

  // 赋值运算符
  a = 100;  // 赋值
  print(a);
  a += b;  // 等价于 a = a + b;
  print(a);
  a -= b;  // 等价于 a = a - b;
  print(a);
  a *= b;  // 等价于 a = a * b;
  print(a);
  double d = 100.00;
  d /= a;  // 等价于 d = d / a;
  print(d);
  a %= b;  // 等价于 a = a % b;
  print(a);
  a ~/= b;  // 等价于 a = a ~/ b;
  print(a);

  // 自加运算符：++a a++

  // 比较运算符
  // 比较运算符计算结果都是bool类型
  print(a == b);  // 等于
  print(a != b);  // 不等于
  print(a > b);  // 大于
  print(a < b);  // 小于
  print(a >= b);  // 大于等于
  print(a <= b);  // 小于等于

  // 逻辑运算符
  // 逻辑运算符计算结果都是bool类型
  bool isdown = true;
  bool isup = false;
  print(isdown && isup);  // 与
  print(isdown || isup);  // 或
  print(!isdown);  // 非
}