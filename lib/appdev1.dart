// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'secondPage.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  double _result = 0.0;
  String status = 'not calculated';
  String url = 'nothing';

  void calculate(double height, double weight, int gender) {
    double heightSquare = height * height;
    double result = weight / heightSquare;
    _result = result;
    if (_result >= 25 && _result <= 29.9) {
      status = 'Overweight';
    } else if (_result <= 18.5) {
      status = 'UnderWeight';
    } else if (_result >= 18.5 && _result <= 24.9) {
      status = 'NormalWeight';
    } else if (_result >= 30 && _result <= 34.9) {
      status = 'Obese Class 1';
    } else if (_result >= 35 && _result <= 39.9) {
      status = 'Obese Class 2';
    } else if (_result >= 40) {
      status = 'RIP';
    }
    if (gender == 1) {
      url = 'assets/images/male icon.png';
    } else {
      url = 'assets/images/female icon.png';
    }
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    TextEditingController weightController = TextEditingController();
    TextEditingController heightController = TextEditingController();
    int gender = 0;

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[700],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: TextField(
                  //onSubmitted: (),
                  controller: heightController,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    hintText: 'Enter height in meter',
                    icon: Icon(Icons.trending_up),
                  )),
            ),
            // ignore: prefer_const_constructors
            Padding(
              padding: const EdgeInsets.all(17.0),
              child: TextField(
                controller: weightController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter weight in kg',
                  icon: Icon(Icons.line_weight),
                ),
              ),
            ),
            SizedBox(height: 25),
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                   RaisedButton.icon(
                    color: Colors.indigoAccent[200],
                    textColor: Colors.white,
                    splashColor: Colors.black87,
                    onPressed: () {
                      gender = 1;
                    },
                    icon: Icon(Icons.male_sharp),
                    label: Text('MALE  '),
                  ),
                  RaisedButton.icon(
                    color: Colors.indigoAccent[200],
                    textColor: Colors.white,
                    splashColor: Colors.black87,
                    onPressed: () {
                      gender = 0;
                    },
                    icon: Icon(Icons.female_sharp),
                    label: Text('FEMALE'),
                    
                  ),
                ]),
            SizedBox(height: 25),
            Container(
              width: 200,
              height: 50,
              child: RaisedButton(
                color: Colors.indigoAccent[700], // background
                textColor: Colors.white, // foreground
                splashColor: Colors.black87,
                onPressed: () {
                  calculate(double.parse(heightController.text),
                      double.parse(weightController.text), gender);
                  setState(() {});
                  print(_result.toStringAsFixed(2));
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => Secondpage(
                            result: _result, status: status, url: url)),
                  );
                },

                child: const Text('Calculate'),
              ),
            ),
            const SizedBox(height: 15),
          ],
        ),
      ),
    );
  }
}
