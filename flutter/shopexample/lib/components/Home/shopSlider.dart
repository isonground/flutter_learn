// 主页：首页：轮播图组件

import 'package:flutter/material.dart';

class shopSlider extends StatefulWidget {
  const shopSlider({super.key});

  @override
  State<shopSlider> createState() => _shopSliderState();
}

class _shopSliderState extends State<shopSlider> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      decoration: BoxDecoration(color: Colors.grey),
      alignment: Alignment.center,
      child: Text('轮播图'),
    );
  }
}
