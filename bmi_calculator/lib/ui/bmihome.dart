import 'package:flutter/material.dart';

class BmiHome extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new BmiHomeState();
  }
}

class BmiHomeState extends State<BmiHome> {
  var _ageController = new TextEditingController();
  var _heightController = new TextEditingController();
  var _weightController = new TextEditingController();
  String _bmiText = "";

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.pink.shade400,
        title: new Text("BMI"),
        centerTitle: true,
      ),
      body: new Container(
          padding: const EdgeInsets.all(20),
          child: new ListView(
            children: <Widget>[
              new Image.asset(
                'images/bmilogo.png',
                width: 200,
                height: 200,
              ),
              new TextField(
                controller: _ageController,
                decoration: new InputDecoration(
                    hintText: "Age", icon: new Icon(Icons.person)),
              ),
              new TextField(
                controller: _heightController,
                decoration: new InputDecoration(
                    hintText: "Height", icon: new Icon(Icons.assessment)),
              ),
              new TextField(
                controller: _weightController,
                decoration: new InputDecoration(
                    hintText: "Weight", icon: new Icon(Icons.view_headline)),
              ),
              new RaisedButton(
                onPressed: calculateBmi,
                textColor: Colors.white,
                color: Colors.pink.shade400,
                child: new Text("Calculate"),
              ),
              new Center(
                child: new Text(
                  _bmiText,
                  style: new TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 30,
                      color: Colors.pink.shade400),
                ),
              )
            ],
          )),
    );
  }

  void calculateBmi() {
    setState(() {
      if (_ageController.text.isNotEmpty &&
          _weightController.text.isNotEmpty &&
          _heightController.text.isNotEmpty) {
        double bmi = (double.parse(_weightController.text) * 10000) /
            (double.parse(_heightController.text) *
            double.parse(_heightController.text));
        _bmiText = "Your BMI is " + bmi.toString();
      } else {
        _bmiText = "Invalid";
      }
    });
  }
}
