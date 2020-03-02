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
        child: Image.network(
          // 'https://www.itying.com/images/201906/goods_img/1120_P_1560842352183.png',
          'https://pic.3gbizhi.com/2014/0527/20140527023524773.jpg',
          alignment: Alignment.bottomRight,
          // color: Colors.yellow,
          // colorBlendMode: BlendMode.hardLight,
          fit: BoxFit.cover,
          // repeat: ImageRepeat.repeat,
        ),
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          color:  Colors.blue
        ),
      ),
    );
  }
  
}