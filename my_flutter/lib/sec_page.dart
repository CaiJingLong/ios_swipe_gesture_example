import 'package:flutter/material.dart';

class SecPage extends StatefulWidget {
  @override
  _SecPageState createState() => _SecPageState();
}

class _SecPageState extends State<SecPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("我是第二页"),
      ),
      body: Container(
        child: Text("第二页就直接用flutter的导航了"),
      ),
    );
  }
}
