import 'package:bmi_calculator_app/main.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ResultsPage extends StatelessWidget {
  ResultsPage(
      {required this.bmiResult,
      required this.resultText,
      required this.interpritation});
  final String bmiResult;
  final String resultText;
  final String interpritation;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Expanded(
              child: Text(
            'YOUR RESULT',
            style: TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
            ),
          )),
          Expanded(
            flex: 5,
            child: ReusableCard(
              colour: Color(0xff1D1E33),
              cardChild: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Center(
                    child: Text(
                      resultText,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Color(0xff24d876)),
                    ),
                  ),
                  Center(
                    child: Text(
                      bmiResult,
                      style: TextStyle(
                        fontSize: 65,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 25),
                    child: Text(
                      interpritation,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
                height: 60.0,
                width: double.infinity,
                padding: EdgeInsets.only(top: 10.0),
                color: Color(0xFFEB1555),
                child: Column(
                  children: <Widget>[
                    Center(
                      child: Text(
                        'RECALCULATE',
                        style: TextStyle(
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                )),
          )
        ],
      ),
    );
  }
}
