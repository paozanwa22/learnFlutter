import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: Text('Latihan Stack dan Align')),
        body: Stack(
          children: [
            // background
            Column(children: [
              Flexible(
                flex: 1,
                child: Row(children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.black12,
                    ),
                  ),
                ]),
              ),
              Flexible(
                flex: 1,
                child: Row(children: [
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.black12,
                    ),
                  ),
                  Flexible(
                    flex: 1,
                    child: Container(
                      color: Colors.white,
                    ),
                  ),
                ]),
              ),
            ]),
            // listview dengan text
            ListView(children: [
              Column(children: [
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack.',
                        style: TextStyle(fontSize: 30))),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack.',
                        style: TextStyle(fontSize: 30))),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack.',
                        style: TextStyle(fontSize: 30))),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack.',
                        style: TextStyle(fontSize: 30))),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack.',
                        style: TextStyle(fontSize: 30))),
                Container(
                    margin: EdgeInsets.all(10),
                    child: Text(
                        'Ini adalah text yang ada di lapisan tengah dari Stack.',
                        style: TextStyle(fontSize: 30))),
              ]),
            ]),
            // button di tengah bawah
            Align(
                // alignment: Alignment.bottomCenter,
                alignment: Alignment(0, 0.95),
                child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Colors.amber, // background
                        onPrimary: Colors.white, // foreground
                        ),
                    onPressed: () {},
                    child: Text('Button')))
          ],
        ),
      ),
    );
  }
}
