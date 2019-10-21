import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {

  var _userController = new TextEditingController();
  var _passwordController = new TextEditingController();
  String _welcome = "";
  void clear(){
    _passwordController.clear();
    _userController.clear();
  }

  @override
  Widget build(BuildContext context) {

    return new Scaffold(
        appBar: new AppBar(
          title: new Text("Login Form"),
          backgroundColor: Colors.greenAccent,
          centerTitle: true,
        ),
        backgroundColor: Colors.blueGrey,
        body: new Container(
          alignment: Alignment.topCenter,
          child: new ListView(
            children: <Widget>[
              new Image.asset(
                'images/face.png',
                width: 90,
                height: 90,
                color: Colors.lightGreen,
              ),
              new Container(
                height: 180,
                width: 380,
                color: Colors.white,
                child: new Column(
                  children: <Widget>[
                    new TextField(
                      controller: _userController,
                      decoration: new InputDecoration(
                          hintText: "Username", icon: new Icon(Icons.person)),
                    ),
                    new TextField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: new InputDecoration(
                          hintText: "Password", icon: new Icon(Icons.lock)),
                    ),
                    new Center(
                      child: new Row(
                        children: <Widget>[
                          new Padding(padding: const EdgeInsets.all(5)),
                         new Container(
                           margin: const EdgeInsets.only(left:38),
                           child: new RaisedButton(onPressed: login, color: Colors.red,child:
                             new Text("Login", style: new TextStyle(color: Colors.white)),),
                         ),
                          new Container(
                            margin: const EdgeInsets.only(left:100),
                            child: new RaisedButton(onPressed:clear, color: Colors.red,child:
                            new Text("Clear", style: new TextStyle(color: Colors.white),),),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              new Padding(padding: const EdgeInsets.all(30)),
              new Text( _welcome,textAlign: TextAlign.center, style: new TextStyle(color: Colors.white,fontSize: 30, fontWeight: FontWeight.bold),)
            ],
          ),
        ));

  }
  void login(){
    setState(() {
      if(_userController.text.isNotEmpty && _passwordController.text.isNotEmpty){
        _welcome = "Welcome, " + _userController.text;
      }else{
        _welcome = "Nothing!";
      }
      _userController.clear();
      _passwordController.clear();
    });
  }

}
