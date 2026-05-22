import 'package:flutter/material.dart';
import 'package:shopexample/pages/Cart/index.dart';
import 'package:shopexample/pages/Category/index.dart';
import 'package:shopexample/pages/Home/index.dart';
import 'package:shopexample/pages/Mine/index.dart';

/// 主页
/// 主页的路由为：/main

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  // 四个导航栏选项
  final List<Map<String, String>> _tabList = [
    // 首页
    {
      "icon": "lib/assets/ic_public_home_normal.png",
      'iconActive': "lib/assets/ic_public_home_active.png",
      "text": "首页",
    },
    // 分类
    {
      "icon": "lib/assets/ic_public_pro_normal.png",
      'iconActive': "lib/assets/ic_public_pro_active.png",
      "text": "分类",
    },
    // 购物车
    {
      "icon": "lib/assets/ic_public_cart_normal.png",
      'iconActive': "lib/assets/ic_public_cart_active.png",
      "text": "购物车",
    },
    // 我的
    {
      "icon": "lib/assets/ic_public_my_normal.png",
      'iconActive': "lib/assets/ic_public_my_active.png",
      "text": "我的",
    },
  ];
  // 当前选中的导航栏索引
  int _currentIndex = 0;
  // 获取底部导航栏图标
  List<BottomNavigationBarItem> _getBottomNavigationBarItems() {
    return List.generate(
      _tabList.length,
      (int index) => BottomNavigationBarItem(
        icon: Image.asset(_tabList[index]["icon"]!, width: 30, height: 30),
        label: _tabList[index]["text"]!,
        activeIcon: Image.asset(
          _tabList[index]["iconActive"]!,
          width: 30,
          height: 30,
        ),
      ),
    );
  }

  // 获取主页主体内容
  List<Widget> _getMainPageChildren() {
    return [
      // 主页：首页视图
      HomeView(),
      // 主页：分类视图
      CategoryView(),
      // 主页：购物车视图
      CartView(),
      // 主页：我的视图
      MineView(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 主页主体内容
      // SafeArea 用于避免内容被状态栏(手机顶部)遮挡
      body: SafeArea(
        // IndexedStack 用于根据当前选中的导航栏索引显示不同的内容
        child: IndexedStack(
          index: _currentIndex,
          children: _getMainPageChildren(),
        ),
      ),
      
      // 主页底部导航栏
      bottomNavigationBar: BottomNavigationBar(
        // 底部导航栏图标
        items: _getBottomNavigationBarItems(),
        // 当前选中的导航栏索引
        currentIndex: _currentIndex,
        // 点击导航栏图标时的回调
        onTap: (int index) {
          _currentIndex = index;
          setState(() {});
        },
        // 选中的导航栏图标文字颜色
        selectedItemColor: Colors.black,
        // 未选中的导航栏图标文字颜色
        unselectedItemColor: Colors.grey,
        // 是否显示未选中的导航栏图标文字
        showUnselectedLabels: true,
      ),
    );
  }
}
