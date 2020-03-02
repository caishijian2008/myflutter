import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter demo'), 
        ), 
        body: HomeContext(),
      ),
    );
  }
}

class HomeContext extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        // 最简单的圆形图片设置方法
        child: ClipOval(
          child: Image.network(
            'https://pic.3gbizhi.com/2014/0527/20140527023524773.jpg',
            width: 100,
            height: 100,
            fit: BoxFit.cover,
            ),
        ),
      ),
    );
  }
  
}