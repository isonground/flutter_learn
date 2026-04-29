void main(){
  // list 列表类型, 用于表示多个元素
  List students = ['张三', '李四', '王五'];
  print(students);
  // 通过索引获取元素
  print(students[0]);

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
  
  // 判断列表中所有元素是否均满足条件
  students.addAll(['新同学1', '新同学2', '新同学3', '新同学4']);
  print(students.every((element){
    // 返回一个bool类型
    return element.toString().startsWith("新"); // 是否是以新字开头
  }));

  // 筛选出满足条件的元素
  print(
    students.where(
      (element){
        return element.toString().startsWith("新"); // 返回是否是以新字开头
      }
    ).toList()
  );

  // List常用属性

  // 列表的长度
  print(students.length);
  // 列表最后一个元素
  print(students.last);
  // 列表第一个元素
  print(students.first);
  // 列表是否为空
  print(students.isEmpty);
}