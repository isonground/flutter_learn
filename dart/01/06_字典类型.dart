void main(){
  // 字典类型，保存为一个个键值对
  Map transMap = {"lunch":"午餐","moring":"早上", "dinner":"晚餐"};
  print(transMap);
  // 通过键获取值
  print(transMap["lunch"]);
  // 通过键修改值
  transMap["lunch"] = "午餐时间";
  print(transMap);

  // 常用方法
  // 遍历字典
  transMap.forEach((key, value){print("$key:$value");});
  // 添加一个键值对
  transMap["breakfast"] = "早餐";
  print(transMap);
  // 添加一个字典
  transMap.addAll({"snack":"零食","supper":"晚餐"});
  print(transMap);
  // 查找是否存在包含某个键
  print(transMap.containsKey("breakfast"));
  // 查找是否存在包含某个值
  print(transMap.containsValue("午餐时间"));
  // 删除一个键值对
  transMap.remove("breakfast");
  print(transMap);
  // 清空字典
  transMap.clear();
  print(transMap);
}