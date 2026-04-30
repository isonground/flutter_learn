/*
构造函数
实例化对象的时候，会自动调用构造函数初始化对象的属性
构造函数分类：
- 默认构造函数(同名构造函数)
- 命名构造函数
- 构造函数的语法糖
*/

void main(){
  // 实例化对象
  Person p1 = Person(name: '张三', age: 18);
  p1.sayHello();
  Person p2 = Person(name: '李四');
  p2.sayHello();
}

class Person{
  String name = '';
  int age = 0;
  // 默认构造函数
  // 语法：
  // 使用可选命名参数方便初始化
  // 类名(可选命名参数){
  //   // 初始化属性
  // }
  Person({String? name, int? age}){
    this.name = name ?? '';
    this.age = age ?? 0;
  }
  void sayHello() => print('你好，我是$name，我今年$age岁');
}
