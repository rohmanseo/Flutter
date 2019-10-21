import 'package:flutter/material.dart';

class Planet extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new PlanetState();
  }
}

class PlanetState extends State<Planet> {
  var _weightController = new TextEditingController();
  double _yourWeight = 0.0;
  var radioValue = null;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Weight On Planet X"),
        centerTitle: true,
      ),
      body: new Container(
        child: new Column(
          children: <Widget>[
            new Center(
              child:
                  new Image.asset('images/planet.png', height: 150, width: 150),
            ),
            new TextField(
              controller: _weightController,
              decoration: new InputDecoration(
                  hintText: "Your weight on earth",
                  icon: new Icon(Icons.person)),
            ),
            new Row(
              children: <Widget>[
                new Radio<int>(
                    value: 0,
                    groupValue: radioValue,
                    onChanged: handleOnChanged),
                new Text("Pluto"),
                new Radio<int>(
                    value: 1,
                    groupValue: radioValue,
                    onChanged: handleOnChanged),
                new Text("Mars"),
                new Radio<int>(
                    value: 2,
                    groupValue: radioValue,
                    onChanged: handleOnChanged),
                new Text("Venus"),
              ],
            ),
            new Text( "Your Weight is " + _yourWeight.toString(),style: new TextStyle(
              fontSize: 30,
              color: Colors.blueGrey,
              fontWeight: FontWeight.bold,
            ),),
          ],
        ),
      ),
    );
  }

  void handleOnChanged(int value) {
    setState(() {
      print(value);
      radioValue = value;
      switch (value) {
        case 0:
          _yourWeight = double.parse(_weightController.text) * 0.06;
          print(_yourWeight);
          break;
        case 1:
          _yourWeight = double.parse(_weightController.text) * 0.38;
          print(_yourWeight);
          break;
        case 2:
          _yourWeight = double.parse(_weightController.text) * 0.91;
          print(_yourWeight);
          break;
      }
    });
  }
}
