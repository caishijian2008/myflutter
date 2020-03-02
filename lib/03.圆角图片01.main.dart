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
      // 利用Container的特性
      child: Container(
        width: 400,
        height: 400,
        decoration: BoxDecoration(
          color:  Colors.blue,
          // borderRadius: BorderRadius.all(
          //   Radius.circular(200)
          // )
          borderRadius: BorderRadius.circular(200),
          image: DecorationImage(
            image: NetworkImage("https://www.itying.com/images/201906/goods_img/1120_P_1560842352183.png"),
            fit: BoxFit.cover
          )
        ),
      ),
    );
  }
  
}