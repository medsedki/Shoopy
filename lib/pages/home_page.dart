import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shoopy/usages/Strings.dart';

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
        title: Text(Strings.APP_TITLE),
        backgroundColor: Colors.red,
      ),
      body: Column(
        children: <Widget>[
          Center(
            child: Text(Strings.HOME_PAGE),
          )
        ],
      ),
    );
  }
}
