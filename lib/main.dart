import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Counter',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CounterPage(),
    );
  }
}

class CounterPage extends StatefulWidget {
  @override
  _CounterPageState createState() => _CounterPageState();
}

class _CounterPageState extends State<CounterPage> {
  int _counter = 50;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130),
      child: Container(
        padding: EdgeInsets.all(8),
        decoration: BoxDecoration(color: Colors.white),
      ),
    );
    return Scaffold(
      appBar: AppBar(
        title: Text('Counter'),
        centerTitle: true,
        backgroundColor: Colors.blue, // Changing app bar color to blue
      ),
      body: Container(
        color: const Color.fromARGB(255, 50, 119,
            151), // Changing screen background color to light blue
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                child: Text(
                  'Tap "-" to decrement',
                  style: TextStyle(
                      fontSize: 14,
                      color: const Color.fromARGB(221, 255, 255, 255)),
                ),
              ),
              SizedBox(height: 15),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: _decrementCounter,
                  ),
                  Text(
                    '$_counter',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.add),
                    onPressed: _incrementCounter,
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text(
                'Tap "+" to increment',
                style: TextStyle(
                    fontSize: 14,
                    color: const Color.fromARGB(221, 255, 255, 255)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
