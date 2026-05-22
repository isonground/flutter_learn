// 主页：首页：无限滚动组件
import 'package:flutter/material.dart';

class shopMoreList extends StatefulWidget {
  const shopMoreList({super.key});

  @override
  State<shopMoreList> createState() => _shopMoreListState();
}

class _shopMoreListState extends State<shopMoreList> {
  @override
  Widget build(BuildContext context) {
    return SliverGrid.builder(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 5,
        crossAxisSpacing: 5,
      ),
      itemBuilder: (context, index) {
        return Container(
          alignment: Alignment.center,
          color: Colors.grey,
          child: Text('商品${index + 1}'),
        );
      },
    );
  }
}
