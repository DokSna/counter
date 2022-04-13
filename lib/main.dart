import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.indigo[300],
        appBar: AppBar(
          title: Text('Counter'),
          centerTitle: true,
          backgroundColor: Colors.indigo,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text('Tap "-" to decrement',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
              CounterWidget(),
              Text('Tap "+" to increment',
                  style: TextStyle(color: Colors.white, fontSize: 16)),
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
      // alignment: Alignment.center,
      // color: Colors.indigo[100],
      // padding: const EdgeInsets.all(16),
      margin: EdgeInsets.all(5),
      width: 120.0,
      height: 50.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        // shape: BoxShape.circle,
        color: Colors.indigo[50],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          IconButton(
              onPressed: () {
                setState(() {
                  _count -= 1;
                });
              },
              icon: Icon(Icons.remove)),
          Text(
            '$_count',
            style: TextStyle(fontSize: 20),
          ),
          IconButton(
              onPressed: () {
                setState(() => _count += 1);
              },
              icon: Icon(Icons.add)),
        ],
      ),
      // decoration: BoxDecoration(
      //     // shape: BoxShape.circle
      //     ),
    );
  }
}
