void main(){
  // 函数的调用
  int result = add(10,20);
  print(result);

  double result2 = add2(10.0,20.0);
  print(result2);
}

// 函数的定义：
int add(int a,int b){
  return a+b;
}

// 返回值类型可以省略，此时编译器自动推断类型为dynamic
add2(double a,double b){
  return a+b;
}
