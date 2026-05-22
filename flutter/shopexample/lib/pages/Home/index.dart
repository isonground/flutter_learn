// 主页：首页视图

/// 首页
/// 内容包括：
/// - 轮播图(shopSlider)
/// - 分类(shopCategory)
/// - 推荐(shopSuggestion)
/// - 爆款(shopHot)
/// - 无限滚动(shopMoreList)
/// 这些自定义组件共同组成首页内容
/// 组件在components/Home目录下分别实现

import 'package:flutter/material.dart';
import 'package:shopexample/components/Home/shopSlider.dart';
import 'package:shopexample/components/Home/shopCategory.dart';
import 'package:shopexample/components/Home/shopSuggestion.dart';
import 'package:shopexample/components/Home/shopHot.dart';
import 'package:shopexample/components/Home/shopMoreList.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List<Widget> _getScrollChildren() {
    return [
      // 轮播图
      SliverToBoxAdapter(child: shopSlider()),
      SliverToBoxAdapter(child: SizedBox(height: 10,)),
      // 分类
      SliverToBoxAdapter(child: shopCategory()),
      SliverToBoxAdapter(child: SizedBox(height: 10,)),
      // 推荐
      SliverToBoxAdapter(child: shopSuggestion()),
      SliverToBoxAdapter(child: SizedBox(height: 10,)),
      // 爆款
      SliverToBoxAdapter(child: shopHot()),
      SliverToBoxAdapter(child: SizedBox(height: 10,)),
      // 无限滚动
      shopMoreList(),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: _getScrollChildren(),
    );
  }
}
