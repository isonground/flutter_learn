/*
 * 异步编程
 * 允许在不阻塞主线程的情况下，执行耗时的操作
 * Dart是一种单线程语言，通过单线程语言+事件循环机制完成耗时任务处理
 * 事件循环
 *    执行同步代码 -> 执行微任务队列 -> 执行事件队列 -> 执行同步代码 ...
 * 微任务队列：执行同步代码，确保代码的顺序性
 * Future.microtask()
 * 事件队列：执行异步代码，确保代码的非阻塞性
 * Future、Future.delayed()、I/O操作等
 * 事件循环：确保事件队列中的事件按顺序执行
 */

/*
 * Future
 * Future是一种异步操作的结果容器，用于存储异步操作的结果
 * Future的状态：
 * - pending：待完成
 * - completed：已完成
 * - rejected：已拒绝
 * Future的使用
 * 创建：Future((){})
 * 处理结果(成功)：then((){})
 * 处理错误：catchError((){})
 */

void main(){
  // 创建一个Future
  Future f = Future((){
    // 正常执行
    // return 'hello world';
    
    // 抛出异常
    throw Exception();
  });

  // 处理结果(成功)
  f.then((value){
    // value是异步操作返回的结果
    // 可以在then中使用value进行后续操作
    print(value);
  });

  // 处理错误
  f.catchError((error){
    print('出现$error错误');
  });
}
