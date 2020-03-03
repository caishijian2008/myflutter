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
        // 1.首先在与lib同级的地方新建images目录，里面存放2.0x,3.0x,4.0x的文件夹和相应的图片，
        // 2.再在pubspec.yaml打开assets的注释，并修改其中的内容
        // 3.静态图片容易出bug，建议用远程图片
        child: Image.asset(
          '/images/a.png',
          fit: BoxFit.cover,
        ),
        width: 300,
        height: 300,
      ),
    );
  }
  
}