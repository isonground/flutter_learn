// 主页：首页：爆款组件
import 'package:flutter/material.dart';

class shopHot extends StatefulWidget {
  const shopHot({super.key});

  @override
  State<shopHot> createState() => _shopHotState();
}

class _shopHotState extends State<shopHot> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      child: Flex(
      direction: Axis.horizontal,
      spacing: 10,
      children: [
        Expanded(
          flex: 1,
          child: HotShops(),
        ),
        Expanded(
          flex: 1,
          child: HotShops(),
        ),
      ]
    ));
  }
}

// 主页：首页：爆款组件：爆款商品组件
class HotShops extends StatefulWidget {
  const HotShops({super.key});

  @override
  State<HotShops> createState() => _HotShopsState();
}

class _HotShopsState extends State<HotShops> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      decoration: BoxDecoration(color: Colors.grey),
      alignment: Alignment.center,
      child: Text('爆款商品'),
    );
  }
}