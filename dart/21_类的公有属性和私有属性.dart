/*
类的的公有属性和私有属性
公有属性：在类的外部可以访问的属性
私有属性：在类的外部不能访问的属性
*/

class Person{
  String? name = '';
  int? age = 0;
  // 私有属性(属性名前加下划线)
  String? _gender = '男';
  Person({this.name, this.age});
  // 公有方法
  void sayHello() => print('你好，我是$name，我今年$age岁');
  // 私有方法(方法名前加下划线)
  void _Hello() => print('你好，我是$name，性别$_gender，我今年$age岁');
} 
