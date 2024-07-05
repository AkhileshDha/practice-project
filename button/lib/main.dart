import 'package:flutter/material.dart';

void main(){
  runApp(ATM());
}
class ATM extends StatelessWidget {
  const ATM({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:Center(
        child:Container(

          height: 200.0,
          width: 300.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18.0),
              color: Colors.blue[200],
                border: Border.all(color: Colors.black,width: 2.0)
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(15,0 , 0, 0),
                height: 20.0,
                width: 50.0,
                child: Text("SBI"),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2.0),
                ),
              ),

              Container(
                height: 30.0,
                width: 40.0,
                child: Icon(Icons.ac_unit),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.black,width: 2.0)
                ),
              ),
              Container(
                child: Text("1234  5678  9101  1121",style: TextStyle(fontWeight: FontWeight.bold),),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Text("Prabhu Pratap tripathi"),
                    ),
                    Container(
                      child: Icon(Icons.accessibility_outlined),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        ),
        ),
    );
  }
}
