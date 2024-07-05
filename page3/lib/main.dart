
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:page3/widgets/appContainer.dart';

void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
            appBar: AppBar(
              title: Text("Flutter project Demo 3"),
            ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                ////////// First container starts here //////////////
                MyContainer(
                  ht: 160,
                    wt: double.maxFinite,
                    clr: Colors.grey.shade600,
                    chld: Column(
                      children: [
                        SizedBox(
                          height: 10.0),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.0,
                            height: 10.0,),

                           Container(
                             height: 60,
                             width: 60,
                             decoration: BoxDecoration(
                               borderRadius: BorderRadius.circular(30),
                               image: DecorationImage(
                                   image:AssetImage("images/d2.png"))
                             ),
                           ),
                          SizedBox(
                            width: 10.0,
                          height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                image: DecorationImage(
                                  image: AssetImage("images/d1.png")
                                )
                              ),
                            ),
                            SizedBox(
                              width:10.0,
                            height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,image: DecorationImage(
                                  image: AssetImage("images/p5.png")
                              )
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,image: DecorationImage(
                                  image: AssetImage("images/dd3.png")
                              )
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                            height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,image: DecorationImage(
                                  image: AssetImage("images/a9.png")
                              )
                              ),
                            ),

                          ],
                        ),
                        SizedBox(
                          height: 10.0,
                        ),
                        Row(
                          children: [
                            SizedBox(
                              width: 10.0,
                              height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,
                                  image: DecorationImage(
                                      image: AssetImage("images/y6.png")
                                  )

                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                              height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,image: DecorationImage(
                                  image: AssetImage("images/w4.png")
                              )
                              ),
                            ),
                            SizedBox(
                              width:10.0,
                              height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,image: DecorationImage(
                                  image: AssetImage("images/i7.png")
                              )
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                              height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,image: DecorationImage(
                                  image: AssetImage("images/s7.png")
                              )
                              ),
                            ),
                            SizedBox(
                              width: 10.0,
                              height: 10.0,),
                            Container(
                              height: 60,
                              width: 60,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(30),
                                  color: Colors.white,image: DecorationImage(
                                  image: AssetImage("images/m8.png")
                              )
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                SizedBox(
                  height: 10.0,
                ),
                ////////// Second container starts here //////////////
                MyContainer(
                    ht: 184,
                    wt: double.maxFinite,
                    clr: Colors.grey.shade300,
                chld: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Promotion'),
                      SizedBox(height: 20,),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,
                                  decoration: BoxDecoration(

                                    borderRadius: BorderRadius.circular(30),
                                    image: DecorationImage(
                                      image: AssetImage("images/5.png"),
                                    )
                                  ),
                                ),
                                Text('Pocket') ,
                                TextButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.local_fire_department,color: Colors.deepOrangeAccent,), label: Text('HOT'))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,

                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                    borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage("images/4.png")
                                      )
                                  ),
                                ),

                                Text('Pocket') ,
                                TextButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.local_fire_department,color: Colors.deepOrangeAccent,), label: Text('HOT'))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,

                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                    borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                          image: AssetImage("images/3.png")
                                      )
                                  ),
                                ),

                                Text('Pocket') ,
                                TextButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.local_fire_department,color: Colors.deepOrangeAccent,), label: Text('HOT'))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,

                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                    borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                      image: AssetImage("images/2.png")
                                  )
                                  ),
                                ),

                                Text('POcket') ,
                                TextButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.local_fire_department,color: Colors.deepOrangeAccent,), label: Text('HOT'))
                              ],
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  height: 60,
                                  width: 60,

                                  decoration: BoxDecoration(
                                      color: Colors.teal,
                                    borderRadius: BorderRadius.circular(30),
                                      image: DecorationImage(
                                      image: AssetImage("images/1.png")
                                  )
                                  ),
                                ),

                                Text('POcket') ,
                                TextButton.icon(
                                    onPressed: (){},
                                    icon: Icon(Icons.local_fire_department,color: Colors.deepOrangeAccent,), label: Text('HOT'))
                              ],
                            ),
                          ],
                        ),
                      )

                    ],
                  ),
                ),
                ),
                SizedBox(
                  height: 20.0,
                ),
                MyContainer(
                    ht: 160,
                    wt: double.maxFinite,
                    clr: Colors.grey.shade600,
                chld:Row(
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Container(
                          height: 60,
                          width: 60,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              color: Colors.white,
                              image: DecorationImage(
                                  image: AssetImage("images/th.jpg")
                              )
                        
                          ),
                        ),
                        Text("Themes",style: TextStyle(fontSize:15.0,fontWeight: FontWeight.w700),),
                        Text("Check it out")
                      ],
                    ),
                    SizedBox(
                      width: 60.0,
                    ),
                    Container(
                      height: 120.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                          image: AssetImage("images/12.jpg"),
                        )
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 120.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.greenAccent,
                        image: DecorationImage(
                          image: AssetImage("images/1111.jpg")
                        )
                      ),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      height: 120.0,
                      width: 70.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(25.0),
                          color: Colors.greenAccent,
                        image: DecorationImage(
                          image: AssetImage("images/1112.jpg")
                        )
                      ),
                    )
                    
                  ],

                ) ,
                ),
                SizedBox(
                        height: 20.0,
                      ),
                MyContainer(
                    ht: 180.0,
                    wt: double.maxFinite,
                    clr: Colors.blueGrey,
                  chld: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 140.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage("images/22.jpg"),
                            )

                          ),
                        ),
                      ),
                      SizedBox(width: 10.0,),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          height: 140.0,
                          width: 155.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(30.0),
                            image: DecorationImage(
                              image: AssetImage("images/25.jpg")
                            )

                          ),
                        ),
                      ),
                    ],
                  ),
                )
                    ],
                  ),
                )
            ),
          )
    );
  }
}
