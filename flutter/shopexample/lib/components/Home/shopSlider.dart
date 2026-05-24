// 主页：首页：轮播图组件

/// 使用轮播图插件(carousel_slider)实现轮播图功能
/// 命令：flutter pub add carousel_slider

/**
 * 关于动态轮播数据获取
 * 1. 安装dio插件
 * 2. 定义常量数据、基础地址、超时时间、业务状态、请求地址
 * 3. 封装网络请求工具、基础地质和拦截器
 * 4. 请求工具进一步解构，处理http状态和业务状态
 * 5. 类工厂转化动态类型到对象类型
 * 6. 封装请求API调用工厂函数
 * 7. 初始化数据更新状态
 */

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
  // 轮播图控制器
  final CarouselSliderController _carouselController =
      CarouselSliderController();
  // 轮播图当前项的索引
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        // 轮播图
        _getSliderChildren(),
        // 轮播图指示灯
        _getSliderIndicators(),
        // 搜索栏
        _getSearchBar(),
      ],
    );
  }

  // 轮播图项的构建函数
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
        // 轮播图项切换时的回调函数
        onPageChanged: (index, reason) {
          // 轮播图项切换时更新当前项的索引
          setState(() {
            _currentIndex = index;
          });
        },
      ),
      carouselController: _carouselController,
    );
  }

  // 轮播图指示灯的构建函数
  Widget _getSliderIndicators() {
    return Positioned(
      left: 0,
      right: 0,
      bottom: 10,
      child: SizedBox(
        height: 10,
        width: double.infinity,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: List.generate(widget.bannerList.length, (index) {
            return GestureDetector(
              onTap: () {
                // 点击指示灯切换轮播图项
                _carouselController.animateToPage(index);
                setState(() {});
              },
              child: AnimatedContainer(
                height: 6,
                width: index == _currentIndex ? 20 : 10,
                margin: EdgeInsets.symmetric(horizontal: 5),
                decoration: BoxDecoration(
                  color: index == _currentIndex
                      ? Colors.white
                      : Color.fromRGBO(0, 0, 0, 0.5),
                  borderRadius: BorderRadius.circular(3),
                ),
                duration: Duration(milliseconds: 300),
              ),
            );
          }),
        ),
      ),
    );
  }

  // 搜索栏的构建函数
  Widget _getSearchBar() {
    return Positioned(
      left: 0,
      right: 0,
      top: 10,
      child: Container(
        height: 30,
        width: double.infinity,
        margin: EdgeInsets.symmetric(horizontal: 20),
        decoration: BoxDecoration(
          color: Color.fromRGBO(0, 0, 0, 0.4),
          borderRadius: BorderRadius.circular(15),
        ),
        child: Center(
          child: TextField(
            decoration: InputDecoration(
              hintText: '搜索',
              icon: Icon(Icons.search),
              iconColor: Colors.white,
              hintStyle: TextStyle(color: Colors.white),
            ),
            strutStyle: StrutStyle(fontSize: 10),
          ),
        ),
      ),
    );
  }
}
