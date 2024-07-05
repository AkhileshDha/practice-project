
import 'package:flutter/material.dart';

void main(){
  runApp(app());
}
class app extends StatelessWidget {
  const app({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
      title: Text("Flutter Container Example"),
        ),

        body:Column(
          children: [ Container(
            width: 180.0,
            height: 150.0,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.indigo,
              border: Border.all(color: Colors.black,width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                new BoxShadow(offset: new Offset(6.0, 6.0),),
              ],
            ),
            child: Text("Hello this is my app", style: TextStyle(backgroundColor:Colors.black,color: Colors.white,fontSize:20)),
          ), Container(
            width: 180.0,
            height: 150.0,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.indigo,
              border: Border.all(color: Colors.black,width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                new BoxShadow(offset: new Offset(6.0, 6.0),),
              ],
            ),
            child: Text("Hello this is my app", style: TextStyle(backgroundColor:Colors.black,color: Colors.white,fontSize:20)),
          ), Container(
            width: 180.0,
            height: 150.0,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.indigo,
              border: Border.all(color: Colors.black,width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                new BoxShadow(offset: new Offset(6.0, 6.0),),
              ],
            ),
            child: Text("Hello this is my app", style: TextStyle(backgroundColor:Colors.black,color: Colors.white,fontSize:20)),
          ), Container(
            width: 180.0,
            height: 150.0,
            margin: EdgeInsets.fromLTRB(0, 30, 0, 0),
            padding: EdgeInsets.all(30),
            decoration: BoxDecoration(
              color: Colors.indigo,
              border: Border.all(color: Colors.black,width: 4),
              borderRadius: BorderRadius.circular(8),
              boxShadow: [
                new BoxShadow(offset: new Offset(6.0, 6.0),),
              ],
            ),
            child: Text("Hello this is my app", style: TextStyle(backgroundColor:Colors.black,color: Colors.white,fontSize:20)),
          ),],
        ),
      ),
    );
  }
}
