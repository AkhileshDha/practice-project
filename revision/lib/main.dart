import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(run());
}
class run extends StatelessWidget {
  const run({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Multiple row and coloum"),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              color: Colors.green,
                height: 100.0,
              width: 200.0,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Icon(Icons.access_alarm_sharp),
                      Icon(Icons.ac_unit),
                      Icon(Icons.access_alarms_rounded),
                    ]
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text("hellp"),
                      Text("hellp"),
                      Text("hellp"),
                    ],
                  ),Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(decoration: BoxDecoration(
                          color: Colors.amberAccent,
                          border: Border.all(color: Colors.black,width: 2.0),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                      height: 20,
                      width: 20,)
                   ,Container(decoration: BoxDecoration(
                          color: Colors.cyan,
                          border: Border.all(color: Colors.black,width: 2.0),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                        height: 20,
                        width: 20,),
                      Container(decoration: BoxDecoration(
                          color: Colors.red,
                          border: Border.all(color: Colors.black,width: 2.0),
                          borderRadius: BorderRadius.circular(8.0)
                      ),
                        height: 20,
                        width: 20,) ],
                  )
                ],
              ),
            ),
            Container(color: Colors.green,
              height: 100.0,
              width: 200.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
            Icon(Icons.access_alarm_sharp),
              Icon(Icons.ac_unit),
              Icon(Icons.access_alarms_rounded),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("karan"),
                    Text("karan"),
                    Text("karan"),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        border: Border.all(color: Colors.black,width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                      height: 20,
                      width: 20,)
                    ,Container(decoration: BoxDecoration(
                        color: Colors.cyan,
                        border: Border.all(color: Colors.black,width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                      height: 20,
                      width: 20,),
                    Container(decoration: BoxDecoration(
                        color: Colors.red,
                        border: Border.all(color: Colors.black,width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                      height: 20,
                      width: 20),
                  ],
                )
              ],
            ),
            ),

            Container(color: Colors.green,
              height: 100.0,
              width: 200.0,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.access_alarms_rounded),
                    Icon(Icons.ac_unit),
                    Icon(Icons.access_alarms_rounded),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text("mohan"),
                    Text("mohan"),
                    Text("mohan"),
                  ],
                ),Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(decoration: BoxDecoration(
                        color: Colors.amberAccent,
                        border: Border.all(color: Colors.black,width: 2.0),
                        borderRadius: BorderRadius.circular(8.0)
                    ),
                    height: 20,
                    width: 20,),
                    Container(decoration: BoxDecoration(
                        color: Colors.cyan,
                      border: Border.all(color: Colors.black,width: 2.0),
                      borderRadius: BorderRadius.circular(8.0)
                    ),
                        height: 20,
                        width: 20),
                    Container(
                        decoration: BoxDecoration(
                          color: Colors.red,
                          borderRadius: BorderRadius.circular(8.0),
                          border: Border.all(color: Colors.black,width: 2.0)
                        ),
                        height: 20,
                        width: 20)
                  ],
                )
              ],
            ),
            ),
          ],
        ),
      ),
    );
  }
}
