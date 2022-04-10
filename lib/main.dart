import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigoAccent,
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tap "-" to decrement'),
              CounterWidget(),
              Text('Tap "+" to increment'),
            ],
          ),
        ),
      ),
    );
  }
}

class CounterWidget extends StatefulWidget {
  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _count = 50;

  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(onPressed: null, icon: Icon(Icons.remove)),
          Text('$_count'),
          IconButton(onPressed: null, icon: Icon(Icons.add)),
        ],
      ),
    );
  }
}
