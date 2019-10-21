import 'package:flutter/material.dart';

class Home extends StatelessWidget{

  final String title;

  Home({Key key, this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(title),
        backgroundColor: Colors.green,
      ),
      body: new customButton(),
    );
  }

}

class customButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: (){
        final snackbar = new SnackBar(content: new Text("Hello there"), duration: new Duration(milliseconds: 100),);
        Scaffold.of(context).showSnackBar(snackbar);
      },
      child: new Container(
        color: Colors.deepOrangeAccent,
        child: new Center(
          child: new Text("Hello There"),
        )
      ),
    );
  }
}