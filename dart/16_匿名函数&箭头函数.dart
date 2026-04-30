void main(){
  // 调用匿名函数
  test();
  // 调用函数作为参数的函数
  test2(test);
  // 调用箭头函数
  int result = add(10,20);
  print(result);
}

// 定义一个匿名函数
Function test = (){
  print('hello world');
};

// 函数作为参数
void test2(Function func){
  print('test2');
  func();
}

// 箭头函数
// 函数名 => 函数体;
// 箭头函数只能有一行代码，不能有多个语句
// 使用箭头函数可以省略return关键字，编译器会自动推断返回值类型
int add(int a,int b) => a+b;
