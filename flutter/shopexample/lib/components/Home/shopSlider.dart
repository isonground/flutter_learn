// 主页：首页：轮播图组件

/// 使用轮播图插件(carousel_slider)实现轮播图功能
/// 命令：flutter pub add carousel_slider

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:shopexample/viewmodels/home.dart';

class shopSlider extends StatefulWidget {
  // 轮播图项的列表用于传递轮播图数据
  final List<BannerItem> bannerList;
  const shopSlider({super.key, required this.bannerList});

  @override
  State<shopSlider> createState() => _shopSliderState();
}

class _shopSliderState extends State<shopSlider> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [_getSliderChildren()]);
  }

  Widget _getSliderChildren() {
    return CarouselSlider(
      items: List.generate(
        // 轮播图项的数量
        widget.bannerList.length,
        // 轮播图项的构建函数
        (index) => Image.network(
          widget.bannerList[index].imgUrl!,
          // 轮播图项的图片填充模式
          fit: BoxFit.cover,
          // 轮播图项的图片宽度
          width: double.infinity,
        ),
      ),
      options: CarouselOptions(
        // 轮播图项的宽度占比
        viewportFraction: 1.0,
        // 轮播图是否自动播放
        autoPlay: true,
        // 轮播图自动播放的时间间隔(默认4秒)
        autoPlayInterval: Duration(seconds: 3),
      ),
    );
  }
}
