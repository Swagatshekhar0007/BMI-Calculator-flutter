import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_gauges/gauges.dart';

class Secondpage extends StatelessWidget {
  double result;
  String status;
  
  String url;
  Secondpage({Key? key, required this.result, required this.status,required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("RESULTS"),
        centerTitle: true,
        backgroundColor: Colors.blueAccent[700],
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            
            // ignore: prefer_const_constructors
            
            // ignore: prefer_const_constructors
            
           
// ignore: prefer_const_constructors
            SizedBox(height: 20),

            
            Container(
                child: SfRadialGauge(
                    enableLoadingAnimation: true,
                    animationDuration: 4500,
                    axes: <RadialAxis>[
                  RadialAxis(minimum: 0, maximum: 50, ranges: <GaugeRange>[
                    GaugeRange(
                        startValue: 0, endValue: 18.5, color: Colors.blue),
                    GaugeRange(
                        startValue: 18.6, endValue: 24.9, color: Colors.green),
                    GaugeRange(startValue: 25, endValue: 29.9, color: Colors.orange),
                    GaugeRange(
                        startValue: 30, endValue: 34.9, color: Colors.red[200]),
                    GaugeRange(startValue: 35, endValue: 39.9, color: Colors.red[400]),
                    GaugeRange(startValue: 40, endValue: 50, color: Colors.red[800]),
                  ], pointers: <GaugePointer>[
                    NeedlePointer(value: result, enableAnimation: true)
                  ], annotations: <GaugeAnnotation>[
                    GaugeAnnotation(
                        widget: Container(
                            child: Text(
                                "BMI IS",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.3),
                    GaugeAnnotation(
                        widget: Container(
                            child: Text(
                                (result == 0)
                                    ? "Enter Value"
                                    : "${result.toStringAsFixed(2)}",
                                style: TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.55),
                    GaugeAnnotation(
                        widget: Container(
                            child: Text(status,
                                textAlign: TextAlign.center,
                                overflow: TextOverflow.ellipsis,
                                style: const TextStyle(
                                    fontSize: 25,
                                    fontWeight: FontWeight.bold))),
                        angle: 90,
                        positionFactor: 0.8)
                  ])
                ])),
                
                Center(
              child: RaisedButton(
                color: Colors.indigoAccent[700],
                //print(result.toStringAsFixed(2)),
                onPressed: () {
                  Navigator.pop(context);
                },

                child: const Text(
                  "BACK",
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 19.4,
                      fontWeight: FontWeight.w800),
                ),
              ),
            ),
            SizedBox(height: 20),

            Image.asset(url)
          ],
        ),
        )
        
      ),
    );
  }
}
