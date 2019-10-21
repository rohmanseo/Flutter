import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(

      alignment: Alignment.center,
      color: Colors.greenAccent,
      child: new Stack(
        textDirection: TextDirection.ltr,
        alignment: Alignment.bottomCenter,
        children: <Widget>[
          const Text("Hello"),
          const Text("Hello Again"),
          const Text("Heii"),
        ],
      ),
//
//      child: new Row(
//        mainAxisAlignment: MainAxisAlignment.start,
//        children: <Widget>[
//          new Text(
//            "First",
//            textAlign: TextAlign.center,
//            style: new TextStyle(
//              color: Colors.white,
//              fontSize: 15,
//            ),
//          ),
//          new Text(
//            "Second",
//            textAlign: TextAlign.center,
//            style: new TextStyle(
//              color: Colors.white,
//                fontSize: 11
//            ),
//          ),
//          new Text("Third",
//            textAlign: TextAlign.center,
//            style: new TextStyle(
//              color: Colors.white,
//                fontSize: 11
//            ),),
//          const Expanded(child: const Text("Hello"))
//
//        ],
//      ),

//      child: new Column(
//        mainAxisAlignment: MainAxisAlignment.center,
//        children: <Widget>[
//          new Text(
//            "First Text",
//            textDirection: TextDirection.ltr,
//            style: new TextStyle(color: Colors.white, fontSize: 18.2),
//          ),
//          new Text(
//            "Second Text",
//            textDirection: TextDirection.ltr,
//            style: new TextStyle(color: Colors.amber, fontSize: 18.2),
//          )
//        ],
//      ),

//      child: new Text(
//        "Hello There",
//        textDirection: TextDirection.ltr,
//        style: new TextStyle(
//          fontWeight: FontWeight.w900,
//          color: Colors.white,
//          fontSize: 29.9
//        ),
//      ),
    );
  }
}
