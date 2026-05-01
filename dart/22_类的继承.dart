/*
类的继承
子类继承父类的属性和方法
dart属于单继承，一个类只能有一个直接父类，子类拥有父类所有属性和方法
子类可以通过@override注解重写父类方法
子类不会直接继承父类的构造函数，需要通过super关键字调用父类构造函数确保父类正确初始化
*/

void main() {
    // 创建子类对象
    Child child = Child(name: '张三', age: 18);
    // 调用子类方法
    child.sayHello();
}

// 父类
class Parent{
    String? name;
    int? age;
    Parent({this.name, this.age});
    void sayHello() => print('父类 $name');
}

// 子类
class Child extends Parent{
    // 通过super关键字调用父类构造函数，确保父类正确初始化属性
    // 语法：子类构造函数({参数列表}) : super(参数列表);
    Child({String? name, int? age}) : super(name: name, age: age);
    // 也可以简写为
    // Child({super.name, super.age});

    // 重写方法
    @override
    void sayHello(){
        super.sayHello();
        print('子类 $name');
    }
}
