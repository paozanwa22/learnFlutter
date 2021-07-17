import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan Container'),),
        body: Container(
          color: Colors.red,
          // margin: EdgeInsets.all(10),
          // margin: EdgeInsets.fromLTRB(1, 15, 30, 40),
          padding: EdgeInsets.only(bottom: 20, top: 20),
          child: Container(
            margin: EdgeInsets.all(10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: <Color>[
                Colors.amber,
                Colors.blue,
            ])),
          ),
        ),
      ),
    );
  }
}
