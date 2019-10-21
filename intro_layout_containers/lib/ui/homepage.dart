import 'package:flutter/material.dart';

class Homepage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Container(
      color: Colors.blue,
      alignment: Alignment.center,
      child: new Text("Hello there", textDirection: TextDirection.ltr, style: new TextStyle(
        color: Colors.white,
        fontSize: 20.2
      ),),
    );
  }

}