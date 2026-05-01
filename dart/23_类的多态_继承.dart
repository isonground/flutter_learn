/*
类的多态
类的同一操作用于不同对象，可以产生不同的执行效果
dart中实现多态的方式有两种
- 继承和方法重写
- 抽象类和接口
*/

void main() {
  // 测试多态
  PayBase base = PayBase();
  base.pay();
  PayBase we = WechatPay();
  we.pay();
  PayBase ali = AliPay();
  ali.pay();
}

/*
1. 声明基础类
2. 声明子类
3. 子类重写基础类的方法
*/

// 基础支付类
class PayBase{
  void pay() => print('基础支付');
}

// 微信支付
class WechatPay extends PayBase{
  @override
  void pay() => print('微信支付');
}

// 支付宝支付
class AliPay extends PayBase{
  @override
  void pay() => print('支付宝支付');
}
