/*
命名构造函数
构造函数可以采用命名方式，返回一个实例对象
语法：
类名.构造函数名(可选命名参数){
  // 初始化属性
}
*/

void main(){
  // 实例化对象
  // 调用默认构造函数
  Person p2 = Person(name: '李四');
  p2.sayHello();
  // 调用命名构造函数
  Person p1 = Person.create('张三', 18);
  p1.sayHello();
}

class Person{
  String name = '';
  int age = 0;
  // 默认构造函数
  Person({String? name, int? age}){
    this.name = name ?? '';
    this.age = age ?? 0;
  }
  // 命名构造函数
  Person.create(String name, int age){
    this.name = name;
    this.age = age;
  }
  void sayHello() => print('你好，我是$name，我今年$age岁');
}