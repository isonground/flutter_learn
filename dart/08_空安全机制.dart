void main(){
  // 在dart中，通过编译静态检查将运行时空指针提前暴露

  // 可空类型: 变量可以是空值
  int? a = null;
  print(a);

  // 安全访问(?.运算符)
  // 如果为空，不会报错，程序会跳过该行代码
  // 如果不为空，会调用方法
  String? username = null;
  username?.startsWith("新");
  
  // 非空断言
  // 断言一定不为空
  // 如果为空，会报错
  // 相比一般方法，非空断言可以绕过编译检查，让可空类型能调用方法，但是如果运行时出现了空值针异常也会报错
  // username = "新用户";
  username!.startsWith("新");

  // 空合并
  // 如果变量为空，会返回默认值
  // 如果不为空，会返回变量的值
  String? name = null;
  String? finalName = name ?? "默认用户";
  print(finalName);
}