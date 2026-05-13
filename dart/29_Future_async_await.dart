/*
 * Future异步编程
 * async/await
 * 用于处理异步操作的结果
 * 语法：
 * async{
 *   // 异步操作
 *   await Future((){});
 *   // 异步操作完成后执行
 * }
 */
void main(){
  test1();
  test2();
  print('main结束');
}

void test1() async{
  String result = await Future((){
    Duration(seconds: 2);
    return 'test1';
  });
  // Future异步操作执行成功后执行下方逻辑
  print('执行成功逻辑$result');
}

void test2() async{
  try{
    await Future((){
      throw Exception('test error');
    });
    // Future异步操作执行成功后执行下方逻辑
    // ignore: dead_code
    print('执行成功逻辑2');
  }catch(error){
    // 通过try/catch可以捕获异常,在catch中处理异常
    print('test2出现$error错误');
  }
}
