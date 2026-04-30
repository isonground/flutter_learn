void main(){
  // 实例化对象
  Person p1 = Person();
  p1.name = '张三';
  p1.age = 18;
  p1.staticStudy();
  p1.study();
}

// 类的定义
// class 类名{
//   属性名：属性类型;
//   方法名：方法体;
// }
class Person{
  String? name;
  int? age;
  void staticStudy() => print('我在学习');
  // 方法中使用属性
  void study() => print('${name ?? "匿名人"}在学习');
}
