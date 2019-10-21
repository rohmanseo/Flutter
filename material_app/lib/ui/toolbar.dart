import 'package:flutter/material.dart';

class Toolbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        backgroundColor: Colors.blue.shade400,
        title: new Text("Material App"),
      ),
      backgroundColor: Colors.grey.shade400,
      body: new Container(
        alignment: Alignment.topLeft,
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            new Text("Hello There", style: new TextStyle(color: Colors.black, fontSize: 30),),
            new Text("Hello There", style: new TextStyle(color: Colors.black, fontSize: 30),),
            new Text("Hello There", style: new TextStyle(color: Colors.black, fontSize: 30),),
            new InkWell(
              child: new Text("Click Me"),
              onTap: ()=> print('Button Clicked'),
            ),

          ],
        ),

      ),
      bottomNavigationBar: BottomNavigationBar(items: [
        new BottomNavigationBarItem(icon: new Icon(Icons.home), title: new Text("Home")),
        new BottomNavigationBarItem(icon: new Icon(Icons.add), title: new Text("Add")),
      ],
      onTap: (int i)=> print("you have clicked item - $i",),
      ),
    );
  }

}