/*
 * Future链式调用
 * Future链式调用是指在Future中调用其他Future，实现异步操作的顺序执行
 * Future链式调用的使用
 * - 在then中调用其他Future
 * - 可以在then中使用上一个Future返回的结果
 * - 可以在catchError中处理异常
 */
void main(){
  Future f = Future((){
    return 'hello world';
  });
  f.then((value){
    // 第一个任务完成后
    return Future(() => "task1");
  }).then((value){
    // 第二个任务完成后
    return Future(() => "$value-task2");
  }).then((value){
    // 第三个任务完成后
    return Future(() => "$value-task3");
  }).then((value){
    // 第四个任务,输出前几个任务输出值,同时抛出异常
    print(value);
    throw Exception("task3 error");
  }).catchError((error) => print(error)
  );
}

