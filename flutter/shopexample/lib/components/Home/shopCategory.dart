// 主页：首页：分类组件
import 'package:flutter/material.dart';

class shopCategory extends StatefulWidget {
  const shopCategory({super.key});

  @override
  State<shopCategory> createState() => _shopCategoryState();
}

class _shopCategoryState extends State<shopCategory> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      // 使用sizedbox包裹是因为ListView没有高度设置，默认无限高度，而CustomScrollView需要固定高度才能正常滚动
      height: 100,
      child: ListView.builder(
        itemCount: 100,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return Container(
            width: 100,
            decoration: BoxDecoration(color: Colors.grey),
            alignment: Alignment.center,
            margin: EdgeInsets.symmetric(horizontal: 1),
            child: Text('分类${index + 1}'),
          );
        }
      ),
    );
  }
}