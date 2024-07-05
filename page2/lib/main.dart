import 'package:flutter/material.dart';
import 'package:page2/info_class.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter project Demo 2"),
        ),
        body: Container(
          child: Column(
            children: [
                 Container(
                  width: 358.0,
                  height: 100.0,
                  decoration: BoxDecoration(
                    color: Colors.purpleAccent,
                    borderRadius: BorderRadius.circular(5.0),
                      border: Border.all(
                      color: Colors.black,
                        width: 1.0
                    )
                  ),
                      child: Column(
                        children: [
                          Row(
                              children: [
                                Icon(Icons.add_alert),
                                Text("Are you having a good experience with AssetPlus!")
                              ],
                            ),
                          
                        ],
                      )
                ),
              Container(
                height: 100.0,
                child: Column(
                  children: [
                    Row(
                      children: [Icon(Icons.backpack),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Mutual Funds Portfolio",style:TextStyle(fontSize: 20.0,fontWeight: FontWeight.w700),)],
                    ),
                    Column(
                      children: [
                        Text("Your portfolio is currently empty!",style: TextStyle(fontWeight: FontWeight.w700,fontSize: 20.0,color: Colors.black)),
                        Text("After you start investing, your matual funds portfolio will appear here.")
                      ],
                    )
                  ],
                ),
              ),
              Column(),
            ],
          ),
        ),
      ),
    );
  }
}
