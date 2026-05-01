/*
 * 泛型
 * 允许使用类型参数，限定类型同时让泛型更加灵活，让代码更加健壮和维护性更高
 * 泛型的使用场景
 * - 泛型集合
 * - 泛型方法
 * - 泛型类
 */

void main(){
  // 泛型集合
  // List<数据类型> 泛型列表
  // 列表中只能存储指定的数据类型
  List<int> list = [1, 2, 3, 4, 5];
  print(list);
  
  // Map<键类型, 值类型> 泛型映射
  // 映射中只能存储指定的键值对
  Map<String, int> map = {'a': 1, 'b': 2, 'c': 3};
  print(map);

  // 调用函数
  print(getValue<int>(100));
  print(getValue<String>('1'));
  printList<int>(list);
  
  // 泛型类
  Student<String> stu = Student(name: '张三', age: 18);
  print(stu.name);
  Student<int> stu2 = Student(name: 18, age: 20);
  print(stu2.age);
}

// 函数中的泛型方法
// 语法：
// 返回值类型 函数名<类型参数>(参数类型 value){
//   return 返回值;
// }
// 通过一个T接收约束的类型，实现在传入参数中约束类型的使用
T getValue<T>(T value){
  return value;
}

void printList<T>(List<T> list){
  for(T item in list){
    print(item);
  }
}

// 泛型类
class Student<T>{
  T? name;
  int? age;
  Student({this.name, this.age});
}
