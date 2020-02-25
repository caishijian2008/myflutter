import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('flutter'), 
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
        child: Text(
          '一个文本一个文本一个文本一个文本一个文本一个文本一个文本一个文本一个文本',
          textAlign: TextAlign.right,
          overflow: TextOverflow.ellipsis,
          maxLines: 2,
          textScaleFactor: 1.5,
          style: TextStyle(
            fontSize: 20,
            color: Colors.green,
            fontWeight: FontWeight.w800,
            fontStyle: FontStyle.italic,
            decoration: TextDecoration.lineThrough,
            decorationColor: Colors.white,
            decorationStyle: TextDecorationStyle.dashed,
            letterSpacing: 2.0
          ),
        ),
        width: 300,
        height: 300,
        decoration: BoxDecoration(
          color:  Color.fromRGBO(255, 0, 0, .6),
          border: Border.all(
            color: Colors.green,
            width: 2
          ),
          borderRadius: BorderRadius.all(
            Radius.circular(30),
          )
        ),
        // padding: EdgeInsets.all(20),
        padding: EdgeInsets.fromLTRB(10, 5, 20, 10),
        transform: Matrix4.rotationZ(.3),
        alignment: Alignment.bottomLeft,
      ),
    );
  }
  
}