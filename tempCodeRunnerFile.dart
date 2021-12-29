// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BMI Calculator"),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: TextField(
                  //onSubmitted: (),
                  keyboardType: TextInputType.number,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter height in meter',
                
                )),
              ),
          // ignore: prefer_const_constructors
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: TextField(
               keyboardType: TextInputType.number,
                decoration: InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Enter weight in kg',
              ),
            ),
          ),
          RaisedButton(
  color: Colors.red, // background
  textColor: Colors.white, // foreground
  onPressed: () { },
  child: Text('calculate'),
)

          ],
        ),
        
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}