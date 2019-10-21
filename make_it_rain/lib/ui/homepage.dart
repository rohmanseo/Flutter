import 'package:flutter/material.dart';

/*
class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(title: new Text("Make it Rain!")),
     body:
      new Column(
        children: <Widget>[
          new Text("Get Rich!", style: new TextStyle(
              fontSize: 30,
          ),),
          new Text("\$1400!", style: new TextStyle(
              fontSize: 50
          ),),
          new InkWell(child: new Text("Let It Rich")
          )],
      ),
    );
  }

}*/

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Make it Rain!"),
          backgroundColor: Colors.lightGreen,
        ),
        body: new Container(
          child: new Column(
            children: <Widget>[
              new Center(
                child: new Text(
                  "Get Rich!",
                  style: text,
                ),
              ),
              new Expanded(
                  child: new Center(
                    child: new Text(
                      "\$$_moneyCounter",
                      style: new TextStyle(
                          fontSize: 46,
                          color: _moneyCounter > 11000 ? Colors.black : Colors.green,
                          fontWeight: FontWeight.w900),
                    ),
                  )),
              new Expanded(
                  child: new Center(
                    child: new FlatButton(
                        color: Colors.lightGreen,
                        textColor: Colors.white70,
                        onPressed: rainMoney,
                        child: new Text(
                          "Let It Rain!",

                        )),
                  ))
            ],
          ),
        ));
  }
  int _moneyCounter = 0;
  var text = new TextStyle(fontSize: 30, color: Colors.grey);

  void rainMoney() {
    setState(() {
      _moneyCounter += 100;
    });
    if(_moneyCounter>=8000){
      text = new TextStyle(fontSize: 30, color: Colors.blue);
    }
  }
}
