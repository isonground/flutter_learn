void main(){
  // if分支
  int a = 10;
  if(a > 5){
    print("a大于5");
  } else if(a < 5){
    print("a小于5");
  } else{
    print("a等于5");
  }

  // 三元运算符：a ? b : c
  // 语法：a ? b : c
  // 含义：如果a为true，执行b，否则执行c
  int b = 20;
  int c = 30;
  int d = a > 5 ? b : c;
  print(d);
  // 输出：20
}