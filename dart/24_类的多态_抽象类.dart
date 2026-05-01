/*
类的多态 - 抽象类和接口
使用abstract关键字声明抽象类(没有方法体，不能实例化)
使用implements关键字实现接口
*/

void main(){
  // 测试多态
  // PayBase base = PayBase();  // 抽象类不能实例化
  PayBase we = WechatPay();
  we.pay();
  PayBase ali = AliPay();
  ali.pay();
}

// 抽象类
abstract class PayBase{
  // 抽象方法，声明但不实现，必须在子类中实现
  void pay();
}

class WechatPay implements PayBase{
  @override
  void pay() => print('微信支付');
}

class AliPay implements PayBase{
  @override
  void pay() => print('支付宝支付');
}
