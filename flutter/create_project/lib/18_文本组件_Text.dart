// 文本组件——Text

/**
 * Text
 * 常用属性
 *  - data：文本内容（必需）
 *  - style：文本样式
 *  注意，对于大量重复使用的文本样式，建议统一定义，有助于保持一致性以及提升性能
 *  - textAlign：文本对齐方式
 *  - maxLines：最大显示行数
 *  - overflow：超出部分的显示方式
 * 属性具体内容待补充
 */

/**
 * TextSpan用来创建富文本，实现一段文字中不同的样式，详见下面的示例
 */

import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(MainPage());
}

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body: Container(
                width: double.infinity,
                height: double.infinity,
                alignment: Alignment.center,
                color: Colors.yellow,
                child: Flex(
                    direction: Axis.vertical,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        Text(
                            'hello',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.blue,
                                fontWeight: FontWeight.w900,
                            ),
                        ),
                        Text.rich(TextSpan(
                            text: ' world',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.w900,
                            ),
                            children: [
                                // 通过children属性，一方面继承了原文本的样式，另一方面可以单独设置子文本的样式
                                TextSpan(
                                    text: ' world',
                                    style: TextStyle(
                                        fontSize: 20,
                                        color: Colors.green,
                                        fontWeight: FontWeight.w900,
                                    ),
                                ),
                            ],
                        )),
                    ],
                ),
            ),
        ),
    );
  }
}
