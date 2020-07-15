import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: ("MyFirstApp"),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  bool isSwitched = false;
  String colour;

  void _change(bool value) {
    setState(() {
      isSwitched = !isSwitched;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Demo App"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Switch(
              value: isSwitched,
              onChanged: _change,
            ),
            SizedBox(height : 8) ,
            Container(
              width: 70,
              height: 70,
              alignment: Alignment.center,
              child: isSwitched
                  ? Text("Blue", style: TextStyle(color: Colors.white))
                  : Text("Green", style: TextStyle(color: Colors.white)),
              decoration: BoxDecoration(
                color: isSwitched ? Colors.blue : Colors.green,
                shape: BoxShape.circle,
              ),
            ),
          ],
        ),
      ),
    );
  }
}