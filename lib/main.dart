import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Widget> widgets = [];

  int counter = 1;

  TextEditingController _inputController = TextEditingController(text: "");

  List<String> _buttons = [
    "7",
    "8",
    "9",
    "+",
    "4",
    "5",
    "6",
    "-",
    "1",
    "2",
    "3",
    "x",
    ",",
    "0",
    "=",
    "/",
  ];

  void onChange(String text) {
    this._inputController.text = this._inputController.text + text;
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Text('Kalkulator'),
          ),
          body: Padding(
            padding: EdgeInsets.all(8.0),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TextFormField(
                    controller: this._inputController,
                    cursorColor: Colors.green,
                    decoration: InputDecoration(
                      suffixIcon: IconButton(
                        icon: Icon(Icons.clear),
                        onPressed: () => this._inputController.clear(),
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5.0)),
                    ),
                  ),
                  Container(
                    color: Colors.yellow,
                    child: Padding(                  
                      padding: const EdgeInsets.only(top: 8.0),
                      child: GridView.builder(
                          shrinkWrap: true,
                          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                              crossAxisCount: 4),
                          itemCount: _buttons.length,
                          itemBuilder: (_, index) => Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: ElevatedButton(
                                onPressed: () {
                                  this.onChange(_buttons[index]);
                                },
                                child: Text(_buttons[index], style: TextStyle(fontSize: 20),)),
                          )),
                    ),
                  )
                ],
              ),
            ),
          )),
    );
  }
}
