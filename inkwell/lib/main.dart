import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
          child: i(
            child: Container(
              width: 200.0,
              height: 200.0,
              color: Colors.yellow,
            ),
          ),
        )
      ),
    );
  }
}
