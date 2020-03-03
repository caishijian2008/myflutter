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
    return ListView(
      padding: EdgeInsets.all(10),
      children: <Widget>[
        ListTile(
          leading: Icon(Icons.android, color: Colors.purpleAccent,),
          title: Text(
            "dasdfsadfasdf",
            style: TextStyle(fontSize: 20),
          ),
          subtitle: Text("dddddddddddddddddddddddddd"),
        ),
        ListTile(
          leading: Icon(Icons.apps),
          title: Text("dasdfsa232323232323dfasdf"),
          subtitle: Text("tttttttttttttttttt"),
        ),
        ListTile(
          leading: Image.network("http://hiphotos.baidu.com/news/crop%3D3%2C0%2C583%2C392%3Bq%3D80%3B/sign=6a7d596127381f308a56d7e994326038/e850352ac65c1038a711a59bbd119313b07e8978.jpg"),
          title: Text("江西仙女湖：群鹭翔集春风里"),
          subtitle: Text("“西塞山前白鹭飞，桃花流水鳜鱼肥。”3月1日，江西省新余市仙女湖境内山水之间成百上千只鹭鸟自由翱翔，成为春天一道美丽的生态之景。"),
        ),
        ListTile(
          leading: Image.network("http://hiphotos.baidu.com/news/crop%3D119%2C0%2C755%2C507%3Bq%3D80%3B/sign=be6acf38fcdeb48fef26fb9ecd2e0b10/32fa828ba61ea8d3be8f215d980a304e251f583d.jpg"),
          title: Text("钟南山领誓 火线入党"),
          subtitle: Text("3月2日，钟南山院士（左）在广州医科大学附属第一医院首批战“疫”一线火线发展党员的入党宣誓仪式上领誓。"),
        ),
        ListTile(
          leading: Image.network("http://hiphotos.baidu.com/news/crop%3D190%2C0%2C650%2C436%3Bq%3D80%3B/sign=803c6f4d4da7d933abe7be33907ae823/b219ebc4b74543a90da9af9511178a82b901143c.jpg"),
          title: Text("“复苏”的工厂"),
          subtitle: Text("3月2日，深圳市一家企业的工人在口罩自动化生产线上包装产品。 近来，广东省深圳市在加强新冠肺炎疫情防控的同时，推进企业复工复产。"),
        ),
        ListTile(
          title: Text("dasdfs1111111111111adfasdf"),
          subtitle: Text("ggggggggggggggg"),
          trailing: Icon(Icons.book)
        ),
      ],
    );
  }
  
}