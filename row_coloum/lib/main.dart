import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(row());
}
class row extends StatelessWidget {
  const row({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.black12,
          margin:EdgeInsets.fromLTRB(20, 120, 100, 122),
          child:Center(
            child: Column(
              children: [
                Row(
                  children: [
                    Icon(Icons.ac_unit_outlined),
                    Icon(Icons.access_alarm),
                    Icon(Icons.accessibility_new_outlined)
                  ],
                ),
                Row(
                  children: [
                    Text("Hello"),
                    Text("Good "),
                    Text("Akhilesh"),
                  ],
                ),
                Row(
                  children: [
                    Container(color: Colors.grey,
                    width: 20,
                    height: 20,),
                    Container(color: Colors.red,width: 20,
                      height: 20,),
                    Container(color: Colors.amberAccent,width: 20,
                      height: 20,)
                  ],
                )
              ],
            ),
          ),
          ),
        ),
      );
  }
}
