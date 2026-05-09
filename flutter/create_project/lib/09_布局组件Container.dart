// 布局组件——基础容器Container

/**
 * Container组件
 * 是一个基础的布局组件，用于包裹其他组件并进行布局，是一个多功能组合容器
 * 特点：
 * - 尺寸可控：通过多种方式定义大小，有明确的优先级规则
 * - 明确的宽高 > constraints约束 > 父组件约束 > 自适应组件大小
 * - 可以通过decoration属性添加装饰，如背景颜色、边框、阴影等，但是和color属性不能同时使用(互斥)
 * - 提供内外边距和对齐方式等布局控制
 * - 支持绘制时进行矩阵变换：旋转、倾斜、平移等
 */

/**
 * Container组件常见属性：
 * alignment：对齐方式
 * width：宽度
 * height：高度
 * constraints：约束条件
 * padding：内边距
 * margin：外边距
 * color：背景颜色
 * decoration：装饰
 * child：子组件
 */

import 'package:flutter/material.dart';

void main(){
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          alignment: Alignment.center,
          width:200,
          height:200,
          // 背景设置：color和decoration对比
          // // 单纯只设置颜色
          // color: Colors.blue,
          decoration: BoxDecoration(
            // 颜色
            color: Colors.blue,
            // 圆角
            borderRadius: BorderRadius.circular(15),
            // 边框
            border: Border.all(width: 3, color: Colors.yellow),
          ),
          // 旋转 弧度制
          transform: Matrix4.rotationZ(0.05),
          margin: EdgeInsets.all(20),
          child: Text('hello world', style: TextStyle(color: Colors.white, fontSize: 20),),
        ),
      ),
    );
  }
}
