/*
类的混入
允许在不适用传统继承的情况下，将多个类的特征组合到一个类中，实现类似多继承的功能
使用mixixin关键字声明混入类，不能实例化，只能被其他类混入
使用with关键字实现混入
一个with支持多个mixin混入，后混入的同名方法会覆盖前混入的方法
*/

void main(){
  Student stu = Student(name: '张三', age: 18);
  stu.song(stu.name!);
  stu.dance(stu.name!);
  
  Teacher tea = Teacher(name: '李四', age: 30);
  tea.dance(tea.name!);
  tea.song(tea.name!);
}

// 混入类
mixin Song{
  void song(String name) => print('$name在唱歌');
}

mixin Dance{
  void dance(String name) => print('$name在跳舞');
}

class Student with Song, Dance{
  String? name;
  int? age;
  Student({this.name, this.age});
}

class Teacher with Song, Dance{
  String? name;
  int? age;
  Teacher({this.name, this.age});
}

