import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_page1/aap_font.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Flutter Demo Page 1"),
          ),
          body: Container(
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(10.0),
                  height: 155.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(18.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    )
                  ),
                  child: Column(
                    children: [
                      Text("Insurance",style: TextStyle()=AppTextStyle().textstyle1,),
                      Text("Insure your future from risks and maintain financial stability!"),
                      SizedBox(
                        height: 5.0,
                      ),
                      Row(
                        children: [
                          Center(
                            child: Container(
                              height: 60.0,
                              width:90.0 ,
                              decoration: BoxDecoration(
                                borderRadius:BorderRadius.circular(10.0),
                                border: Border.all(
                                  color: Colors.black,width: 2.0
                                )
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                      Icon(Icons.health_and_safety),
                                  Text("Health"),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Center(
                            child: Container(
                              height: 60.0,
                              width:90.0 ,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Colors.black,width: 2.0
                                  )
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                  height: 5.0,
                                  ),
                                  Icon(Icons.umbrella_rounded),
                                  Text("Term"),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 15.0,
                          ),
                          Center(
                            child: Container(
                              height: 60.0,
                              width:90.0 ,
                              decoration: BoxDecoration(
                                  borderRadius:BorderRadius.circular(10.0),
                                  border: Border.all(
                                      color: Colors.black,width: 2.0
                                  )
                              ),
                              child: Column(
                                children: [
                                  SizedBox(
                                    height: 5.0,
                                  ),
                                  Icon(Icons.car_repair),
                                  Text("Motor"),
                                ],
                              ),
                            ),
                          )

                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  child: Column(
                    children: [
                      Text("Goals",style: TextStyle()=AppTextStyle().textstyle1,),
                      Text("Track your financial goals with ease"),

                    ],
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Container(
                  width: 350.0,
                  height: 65.0,
                  padding: EdgeInsets.all(10.0),
                  child: Text("Click here to tag your investments to a financial goal "),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0,
                    )
                  ),

                ),
                SizedBox(
                  height:20.0,),
                Container(
                  height: 210.0,
                  width: 350.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15.0),
                    border: Border.all(
                      color: Colors.black,
                      width: 2.0
                    )
                  ),
                  child: Column(
                    children: [
                      Text("Consult",style: TextStyle()=AppTextStyle().textstyle1,),
                      Text("Talk  to PAWAN KUMAR MISHRA for all things Investments and Insurance!"),
                  Row(
                    children: [
                      SizedBox(
                        width: 10.0,
                        height: 10.0,
                      ),
                      Column(
                        children: [
                          Container(
                            width:150.0,
                            height: 60.0,
                            child:Column(
                              children: [
                                Icon(Icons.manage_accounts),
                                Text("Investment Support")
                        ],
                                  )
                                  ,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                      color: Colors.black,
                                      width: 2.0

                                    )
                                  ),
                                ),
                              ],
                            ),
                      SizedBox(
                        width: 10.0,
                      height: 10.0,),
                      Column(
                              children: [
                                Container(
                                  width: 150.0,
                                  height: 60.0,
                                  child:Column(
                                    children: [
                                      Icon(Icons.manage_accounts_outlined),
                                      Text("Insurance Support")
                                    ],
                                  )
                                  ,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 2.0

                                    )
                                ),
                                ),
                              ],
                            )
                        ]
                        ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                          children: [
                            SizedBox(
                              width: 10.0,
                              height: 10.0,
                            ),
                            Column(
                              children: [
                                Container(
                                  width:150.0,
                                  height: 60.0,
                                  child:Column(
                                    children: [
                                      Icon(Icons.image_search),
                                      Text("Learn More")
                                    ],
                                  )
                                  ,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 2.0

                                    )
                                ),
                                ),
                              ],
                            ),
                            SizedBox(
                              width: 10.0,),
                            Column(
                              children: [
                                Container(
                                  width: 150.0,
                                  height: 60.0,
                                  child:Column(
                                    children: [
                                      Icon(Icons.analytics_outlined),
                                      Text("Review Portfolio")
                                    ],
                                  )
                                  ,decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10.0),
                                    border: Border.all(
                                        color: Colors.black,
                                        width: 2.0

                                    )
                                ),
                                ),
                              ],
                            )
                          ]
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 20.0,),
                Container(
                  child: Text("Powered by Trisanco Infotech Pvt Ltd"),
                )
              ],
            ),

          ),
        ),
      ),
    );
  }
}
