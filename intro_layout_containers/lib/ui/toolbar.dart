import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.deepOrangeAccent,
        title: new Text("Fancy Day"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.send), onPressed: () => print("CLICKED")  ),
        ],
      ),
    );
  }

}
