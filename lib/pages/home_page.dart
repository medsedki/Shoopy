import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        //elevation removes th shodow
        elevation: 0.0,
        title: Text("Shoopy"),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text("Home Page"),
          )
        ],
      ),
    );
  }
}
