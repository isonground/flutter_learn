void main(){
  // dynamic类型，可以保存任意类型的值
  // 允许变量在运行时自由改变类型，同时可以绕过编译时的类型检查
  dynamic a = 10;
  print(a);
  a = "hello";
  print(a);
  // dynamic可以调用任意不同类型方法
  // a.toString(); // dynamic由于没有编译检查，虽然可以使用任何类型的方法，在编译时不会报错，但是实际上运行时会报错，比如这里a是一个字符串，不能调用toString方法方法
}