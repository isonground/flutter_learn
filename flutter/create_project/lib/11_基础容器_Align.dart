// 布局组件——对齐组件Align

/// 对齐组件Align
/// 对齐组件可以精确控制子组件在父容器空间内的对齐位置
/// 常用属性
/// alignment：对齐方式
///  - Alignment.center 居中对齐
///  - Alignment.topLeft 左上角对齐
///  - Alignment.topRight 右上角对齐
///  - Alignment.topCenter 上顶部居齐对齐
///  - Alignment.bottomLeft 左下角对齐
///  - Alignment.bottomRight 右下角对齐
///  - Alignment.bottomCenter 下底部居齐对齐
///  - Alignment.leftCenter 左侧居齐对齐
///  - Alignment.rightCenter 右侧居齐对齐
/// widthFactor：宽度因子：align组件宽度为子组件宽度*widthFactor
/// heightFactor：高度因子：align组件高度为子组件高度*heightFactor
/// 默认Align组件宽高等于父组件的宽高，即align组件占满了父组件，align组件的子组件在align中，再按照设定位置显示
/// 前面提到的Center组件继承自Align组件，Center组件默认对齐方式为Alignment.center

import 'package:flutter/material.dart';

void main(){
    runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Align',
        home: Scaffold(
            appBar: AppBar(
                title: Text('Align'),
                centerTitle: true,
            ),
            body: Container(
                    color: Colors.red,
                    child: Align(
                    // 居中显示
                    alignment: Alignment.center,
                    // 通过Icon组件显示一个黄色的星号
                    child: Icon(
                        Icons.star,
                        size: 50,
                        color: Colors.yellow,
                    ),
                    widthFactor: 2,
                    heightFactor: 2,
                ),
            ),
        ),
    );
  }
}
