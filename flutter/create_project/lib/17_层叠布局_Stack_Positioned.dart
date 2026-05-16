// 布局组件_层叠布局Stack/Positioned

/// 将多个子组件按照Z轴（垂直于屏幕）方向进行叠加排列

import 'package:flutter/material.dart';

/**
 * Stack
 * 常用属性
 *  - alignment：非定位子组件在Stack组件中的对齐方式
 *      - Alignment.center：居中对齐
 *      - Alignment.centerLeft：居中左对齐
 *      - Alignment.centerRight：居中右对齐
 *      - Alignment.topCenter：顶部居中对齐
 *      - Alignment.topLeft：顶部左对齐
 *      - Alignment.topRight：顶部右对齐
 *      - Alignment.bottomCenter：底部居中对齐
 *      - Alignment.bottomLeft：底部左对齐
 *      - Alignment.bottomRight：底部右对齐
 *  - fit: 非定位子组件如何适应Stack尺寸
 *      - StackFit.expand：扩展子组件以填充Stack尺寸
 *      - StackFit.loose：子组件保持原始尺寸，不扩展或压缩
 *      - StackFit.passthrough：子组件保持原始尺寸，不扩展或压缩，也不裁剪
 *  - clipBehavior：子组件超出Stack边界时的处理方式
 *      - Clip.none：不裁剪子组件超出Stack边界的部分
 *      - Clip.antiAlias：使用抗锯齿裁剪子组件超出Stack边界的部分
 *      - Clip.hardEdge：使用硬边裁剪子组件超出Stack边界的部分
 *      - Clip.antiAliasWithSaveLayer：使用抗锯齿裁剪子组件超出Stack边界的部分，同时保存子组件超出Stack边界的部分
 *  - children：子组件
 */

/// Positioned组件常用来作为Stack的子组件，用于定位子组件在Stack中的位置
/**
 * Positioned
 * 用于定位子组件在Stack中的位置
 * Positioned组件必须放置在Stack组件中，通过设置常用属性，可以实现子组件相对于Stack的定位
 * 常用属性
 *  - top：上边距
 *  - bottom：下边距
 *  - left：左边边距
 *  - right：右边边距
 *  - width：宽度
 *  - height：高度
 *  这里同时设置左右或者上下边距，会拉伸或压缩子组件的尺寸，以达到对应边距效果
 *  - child：子组件
 */

void main(List<String> args) {
  runApp(MainPage());
}

/// Stack基础用法，无Positioned
// class MainPage extends StatelessWidget {
//   const MainPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         body: Container(
//           color: Colors.green,
//           height: double.infinity,
//           width: double.infinity,
//           child: Stack(
//             alignment: Alignment.center,
//             children: [
//               Container(color: Colors.grey, width: 300, height: 300),
//               Container(color: Colors.red, width: 200, height: 200),
//               Container(color: Colors.blue, width: 100, height: 100),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

// 进阶用法
class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.green,
          height: double.infinity,
          width: double.infinity,
          child: Stack(
            // clipBehavior: Clip.
            alignment: Alignment.center,
            children: [
              Container(color: Colors.grey, width: 300, height: 300),
              Positioned(
                right: 10,
                bottom: 10,
                child: Container(color: Colors.red, width: 200, height: 200),
              ),
              Positioned(
                left: 10,
                top: 10,
                bottom: 10,
                child: Container(color: Colors.blue, width: 100, height: 100),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
