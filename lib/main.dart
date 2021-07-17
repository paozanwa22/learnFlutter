import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("App v1"),
        ),
        body: Center(
            child: Container(
                color: Colors.lightBlue,
                width: 150,
                height: 130,
                child: Text(
                  "Saya sedang melatih kemampuan flutter saya",
                  // maxLines: 2,
                  // overflow: TextOverflow.clip,
                  // softWrap: false
                  // textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white, 
                    fontStyle: FontStyle.italic, 
                    fontWeight: FontWeight.w700, 
                    fontSize: 20),
                ))),
      ),
    );
  }
}
