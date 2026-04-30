void main(){
  print(add(10,20));
  print(combineString('hello','world'));
  print(combineString('hello','world','!'));

  print(combineString2(a:'hello',b:'world',c:'!'));
}

// 必传参数
/*
必传参数是必须传递的参数，不能省略
*/
int add(int a,int b){
  return a+b;
}

// 可选位置参数
/*
可选位置参数是可以在调用函数时省略的参数
采用[]包裹
必须放在必传参数后面，不能放在前面
*/
String combineString(String a, [String? b, String? c]){
  return a + (b??'') + (c??'');
}

// 可选命名参数
/*
可选命名参数是可以在调用函数时指定参数的名称，
而不需要按顺序传递参数
采用{}包裹
参数的顺序可以任意
参数的默认值可以省略
命名参数必须放在必传参数后面
命名参数和可选位置参数不能同时使用
可选命名参数可以设定默认值
*/
String combineString2({String a='',String b='',String c=''}){
  return a + b + c;
}
