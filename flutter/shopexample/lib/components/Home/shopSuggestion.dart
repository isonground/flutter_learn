// 主页：首页：推荐组件

import 'package:flutter/material.dart';

class shopSuggestion extends StatefulWidget {
  const shopSuggestion({super.key});

  @override
  State<shopSuggestion> createState() => _shopSuggestionState();
}

class _shopSuggestionState extends State<shopSuggestion> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 200,
      decoration: BoxDecoration(color: Colors.grey),
      alignment: Alignment.center,
      child: Text('推荐'),
    );
  }
}
