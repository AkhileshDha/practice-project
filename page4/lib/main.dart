import 'package:flutter/material.dart';
import 'package:page4/widgets/my_profile.dart';

void main(){
runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter project Demo 8"),
        ),
        body: Center(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Popular searches",style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w500,
              ),),
                 Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      MyContainer(ht: 70.0,  wt: 155.0, colr: Colors.grey.shade400,
                        chld: Row(
                          children: [
                            Container(
                              child: Text("Darts Games"),
                              height: 70,
                              width: 110,
                            ),
                            Icon(Icons.search_rounded,color: Colors.blueAccent,)
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 10.0,),
                     MyContainer(ht: 70.0, wt: 155.0, colr:Colors.grey.shade400,
                       chld: Row(
                          children: [
                            Container(
                              child: Text("Hidden Object games"),
                              height: 70,
                              width: 110,
                            ),
                            SizedBox(width: 5.0,),
                            Icon(Icons.search_rounded,color: Colors.blueAccent,)
                          ],
                        ),
                      ),
                    ],
                  ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyContainer(ht: 75.0,  wt: 155.0, colr: Colors.grey,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Darts Games"),
                          height: 70,
                          width: 110,
                        ),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,),
                  MyContainer(ht: 75.0, wt: 155.0, colr:Colors.grey.shade400,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Hidden Object games"),
                          height: 70,
                          width: 110,
                        ),
                        SizedBox(width: 5.0,),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyContainer(ht: 75.0,  wt: 155.0, colr: Colors.grey,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Darts Games"),
                          height: 70,
                          width: 110,
                        ),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,),
                  MyContainer(ht: 75.0, wt: 155.0, colr:Colors.grey.shade400,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Hidden Object games"),
                          height: 70,
                          width: 110,
                        ),
                        SizedBox(width: 5.0,),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyContainer(ht: 75.0,  wt: 155.0, colr: Colors.grey,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Darts Games"),
                          height: 70,
                          width: 110,
                        ),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,),
                  MyContainer(ht: 75.0, wt: 155.0, colr:Colors.grey.shade400,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Hidden Object games"),
                          height: 70,
                          width: 110,
                        ),
                        SizedBox(width: 5.0,),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyContainer(ht: 75.0,  wt: 155.0, colr: Colors.grey,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Darts Games"),
                          height: 70,
                          width: 110,
                        ),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,),
                  MyContainer(ht: 75.0, wt: 155.0, colr:Colors.grey.shade400,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Hidden Object games"),
                          height: 70,
                          width: 110,
                        ),
                        SizedBox(width: 5.0,),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyContainer(ht: 75.0,  wt: 155.0, colr: Colors.grey,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Darts Games"),
                          height: 70,
                          width: 110,
                        ),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,),
                  MyContainer(ht: 75.0, wt: 155.0, colr:Colors.grey.shade400,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Hidden Object games"),
                          height: 70,
                          width: 110,
                        ),
                        SizedBox(width: 5.0,),
                        Icon(Icons.search_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                ],
              ),

              Text("Explore games",style: TextStyle(
                fontSize: 17.0,
                fontWeight: FontWeight.w500,
              ),),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyContainer(ht: 75.0,  wt: 155.0, colr: Colors.grey,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Action"),
                          height: 70,
                          width: 110,
                        ),
                        Icon(Icons.airplanemode_active,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,),
                  MyContainer(ht: 75.0, wt: 155.0, colr:Colors.grey.shade400,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Simulation"),
                          height: 70,
                          width: 110,
                        ),
                        SizedBox(width: 5.0,),
                        Icon(Icons.videogame_asset_sharp,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  MyContainer(ht: 75.0,  wt: 155.0, colr: Colors.grey,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Puzzle"),
                          height: 70,
                          width: 110,
                        ),
                        Icon(Icons.games_sharp,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 10.0,),
                  MyContainer(ht: 75.0, wt: 155.0, colr:Colors.grey.shade400,
                    chld: Row(
                      children: [
                        Container(
                          child: Text("Adventure"),
                          height: 70,
                          width: 110,
                        ),
                        SizedBox(width: 5.0,),
                        Icon(Icons.watch_later_rounded,color: Colors.blueAccent,)
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 5.0,
              ),
            ],
          ),
        ),
        ),
      ),
    );
  }
}
