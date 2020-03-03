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
    return Container(
      height: 180,
      child: ListView(
        // 垂直列表，则宽度自适应；
        // 水平列表，则高度自适应。
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 200,
            color: Colors.red,
          ),
          Container(
            width: 200,
            color: Colors.green,
            child: ListView(
              children: <Widget>[
                Image.network(
                  "http://hiphotos.baidu.com/news/crop%3D190%2C0%2C650%2C436%3Bq%3D80%3B/sign=803c6f4d4da7d933abe7be33907ae823/b219ebc4b74543a90da9af9511178a82b901143c.jpg",
                ),
                Text(
                  "一个标题",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 20
                  ),
                )
              ],
            ),
          ),
          Image.network("http://hiphotos.baidu.com/news/crop%3D3%2C0%2C583%2C392%3Bq%3D80%3B/sign=6a7d596127381f308a56d7e994326038/e850352ac65c1038a711a59bbd119313b07e8978.jpg"),
          Image.network("http://hiphotos.baidu.com/news/crop%3D119%2C0%2C755%2C507%3Bq%3D80%3B/sign=be6acf38fcdeb48fef26fb9ecd2e0b10/32fa828ba61ea8d3be8f215d980a304e251f583d.jpg"),
          Image.network("http://hiphotos.baidu.com/news/crop%3D190%2C0%2C650%2C436%3Bq%3D80%3B/sign=803c6f4d4da7d933abe7be33907ae823/b219ebc4b74543a90da9af9511178a82b901143c.jpg"),
          Image.network("http://hiphotos.baidu.com/news/crop%3D3%2C0%2C583%2C392%3Bq%3D80%3B/sign=6a7d596127381f308a56d7e994326038/e850352ac65c1038a711a59bbd119313b07e8978.jpg"),
          Image.network("http://hiphotos.baidu.com/news/crop%3D119%2C0%2C755%2C507%3Bq%3D80%3B/sign=be6acf38fcdeb48fef26fb9ecd2e0b10/32fa828ba61ea8d3be8f215d980a304e251f583d.jpg"),
          Image.network("http://hiphotos.baidu.com/news/crop%3D190%2C0%2C650%2C436%3Bq%3D80%3B/sign=803c6f4d4da7d933abe7be33907ae823/b219ebc4b74543a90da9af9511178a82b901143c.jpg"),
        ]
      ),
    );
  }
  
}