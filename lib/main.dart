import 'package:flutter/material.dart';

// Handling gestures 处理手势
/**
 * 大多数应用都需要通过系统来处理一些用户交互。构建交互式应用程序的第一步是检测输入手势，这里通过创建一个简单的按钮来了解其工作原理：
 * */
void main() {
  // runApp(const MyApp());
  runApp(const MaterialApp(
    home: Scaffold(
      body: Center(
        child: MyButton(),
      ),
    ),
  ));
}

class MyButton extends StatelessWidget {
  const MyButton({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      //GestureDetector widget 没有可视化的展现，但它能识别用户的手势。
      onTap: () {
        print('object');
        /**
         * 当用户点击 Container 时， GestureDetector 会调用其 onTap() 回调，在这里会向控制台打印一条消息。
         * 你可以使用 GestureDetector 检测各种输入的手势，包括点击，拖动和缩放
         * */
      },
      child: Container(
        height: 50.0,
        padding: const EdgeInsets.all(8.0),
        margin: const EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: const Center(
          child: Text('第一个按钮'),
        ),
      ),
      // theme: ThemeData(
      //   primarySwatch: Colors.blue,
      // ),

      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

/**
 * 许多 widget 使用 GestureDetector 为其他 widget 提供可选的回调。
 * 例如，IconButton、ElevatedButton 和 FloatingActionButton widget 都有 onPressed() 回调，
 * 当用户点击 widget 时就会触发这些回调。
 * */ 



 