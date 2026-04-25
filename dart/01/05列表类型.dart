void main(){
  // list 列表类型, 用于表示多个元素
  List students = ['张三', '李四', '王五'];
  print(students);

  // 列表常用方法
  // 在尾部添加元素
  students.add('赵六');
  print(students);
  // 在尾部添加一个列表
  students.addAll(['王二', '麻子']);
  print(students);
  // 删除满足内容的第一个元素
  students.add('王二');
  students.remove('王二');
  print(students);
  // 删除最后一个元素
  students.removeLast();
  print(students);
  // 删除索引范围内的数据
  // 删除索引为0到1的元素
  // listname.removeRange(start, end-1);
  students.removeRange(0, 2);
  print(students);

  // forEach循环
  // 遍历列表中的每个元素
  // listname.forEach((element) {});
  students.forEach((element) {
    print(element);
  });
  
  // 是否满足条件
}