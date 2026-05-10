// 布局组件——对齐组件Align

/**
 * 对齐组件Align
 * 对齐组件可以精确控制子组件在父容器空间内的对齐位置
 * 常用属性
 * alignment：对齐方式
 *  - Alignment.center 居中对齐
 *  - Alignment.topLeft 左上角对齐
 *  - Alignment.topRight 右上角对齐
 *  - Alignment.topCenter 上顶部居齐对齐
 *  - Alignment.bottomLeft 左下角对齐
 *  - Alignment.bottomRight 右下角对齐
 *  - Alignment.bottomCenter 下底部居齐对齐
 *  - Alignment.leftCenter 左侧居齐对齐
 *  - Alignment.rightCenter 右侧居齐对齐
 * widthFactor：宽度因子
 * heightFactor：高度因子
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
        title: 'Align',
        home: Scaffold(
            appBar: AppBar(
                title: Text('Align'),
                centerTitle: true,
            ),
            body: Align(
                // 居中显示
                alignment: Alignment.center,
                // 通过Icon组件显示一个黄色的星号
                child: Icon(
                    Icons.star,
                    size: 50,
                    color: Colors.yellow,
                ),
            ),
        ),
    );
  }
}
