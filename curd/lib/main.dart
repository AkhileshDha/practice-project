import 'package:curd/utils/app_font.dart';
import 'package:flutter/cupertino.dart';
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
        body: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150.0,
              width: 350.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                border: Border.all(
                  color: Colors.black,
                  width: 3.0,
                )
              ),
          child:Column(
                children: [
                  Text("Insurance",style: TextStyle()=AppTextStyle().textstyle1),
                  Text("Insure your future from risks and maintain financial stability!"),
                  Row(
                    children: [
                     Center(
                       child: Column(
                         children: [
                           Icon(Icons.health_and_safety),
                           Text("Health"),
                           Container(
                             height: 37.0,
                             width: 110.0,
                           )
                         ],
                       ),
                     ),
                      Center(
                        child: Column(
                          children: [
                            Icon(Icons.umbrella_outlined),
                            Text("Term"),
                            Container(
                              height: 37.0,
                              width: 110.0,
                            )
                          ],
                        ),
                      ),
                      Center(
                        child: Column(
                          children: [
                            Icon(Icons.car_repair),
                            Text("Motor"),
                            Container(
                              height: 37.0,
                              width: 110.0,
                            )
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Column(
              children: [
                Container(
                  child: Column(
                    children: [
                      Text("Goals",style: TextStyle()=AppTextStyle().textstyle1,),
                      Text("Track your financial goals with ease",style: TextStyle()=AppTextStyle().textstyle2,)
                    ],
                  ),
                )
              ],
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              padding: EdgeInsets.all(2.0),
              height: 60.0,
              width: 350.0,
              color: Colors.white10,
              child: Text("Click here to tag your investments to a financial goal",style: TextStyle()=AppTextStyle().textstyle2,),),
            Container(
              child: Column(
                children: [
                  Text("Consult",style: TextStyle()=AppTextStyle().textstyle1,),
                  Text("Talk to PAWAN KUMAR MISHRA for all things Investments and Insurance!"),
                  Row(
                    children: [
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: Column(
                          children: [
                            Icon(Icons.man_2),
                            Text("Investments Support"),
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      Container(
                        height: 100.0,
                        width: 100.0,
                        child: Column(
                          children: [
                            Icon(Icons.man_2_rounded),
                            Text("Insurance Support"),
                          ],
                        ),
                      )
                    ],
                  ),
                  Row(
                    children: [
                    Container(
                      height: 100.0,
                      width: 100.0,
                      child: Column(
                        children: [
                          Icon(Icons.bookmark_add_sharp),
                          Text("Learn More"),
                        ],
                      ),
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    Container(
                      height: 100.0,
                      width: 100.0,
                      child: Column(
                        children: [
                          Icon(Icons.line_axis),
                          Text("Review Portfolio"),
                        ],
                      ),
                    )
                  ],
                  ),
                ],
              ),
            )
          ]
        ),
        
        ),
    );
  }
}
