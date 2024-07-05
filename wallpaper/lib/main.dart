import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(Wallpaper());
}
class Wallpaper extends StatelessWidget {
  const Wallpaper({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.white,
          padding: EdgeInsets.all(40),
          height: 850,
          child: Container(
            color: Colors.deepPurple[100],
              width: 262,
            margin: EdgeInsets.all(20),
            padding: EdgeInsets.fromLTRB(5, 70, 5,70),
            child: Text("Succes Is The Sum Of Small Efforts,Repeated Day In And Day Out",style: TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
          fontSize:40,
              wordSpacing: 5,
            ),),
          ),
        ),
      ),
    );

  }
}
