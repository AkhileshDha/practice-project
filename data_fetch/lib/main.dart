import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: AssetImage("images/1.jpg"),
              ),
              Text("Prasanna Tripathi", style: TextStyle(fontSize: 20.0,fontWeight: FontWeight.bold,
              fontFamily: 'Pacifico', color: Colors.white),),
              Text("React Developer", style: TextStyle(fontSize: 20.0,color: Colors.teal[900], fontFamily: 'Pacifico'),),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.mail,
                    color: Colors.black,),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("prasannatripathi@gmail.com",style: TextStyle(color: Colors.black),)
                  ],
                ),
              ),
              Container(
                color: Colors.white,
                margin: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                padding: EdgeInsets.symmetric(horizontal: 20.0,vertical: 10.0),
                child: Row(
                  children: [
                    Icon(Icons.phone,
                      color: Colors.black,),
                    SizedBox(
                      width: 20.0,
                    ),
                    Text("9993-3322-21",style: TextStyle(color: Colors.black),)
        ],
      ),
    )
    ],
    ),
    ),
      ),
    );
  }
}
