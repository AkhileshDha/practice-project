import 'package:ajio/wigets/menu_container.dart';
import 'package:flutter/material.dart';
class MyLogin extends StatelessWidget {
   MyLogin({super.key});
  Map myContainerList = {
    'htr': [80,80,80,80],
    'wtr': [110,110,110,110],
    'str':['Home','Handbags','Luggage & Trolleys', 'xyz']
  };


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("AJIO",
        style: TextStyle(
          fontWeight: FontWeight.w700,
          fontSize: 22.0
        ),),
        actions: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  height: 40.0,
                  width: 220.0,
                  padding:const EdgeInsets.all(2.0),
                  child: TextField(
                    decoration: InputDecoration(
                      labelText: "Search By Product",
                        suffixIcon: const Icon(Icons.camera_alt_outlined,
                          size: 15.0,),
                        border: OutlineInputBorder(
                            borderRadius:BorderRadius.circular(9.0),
                            borderSide:  const BorderSide(
                                color: Colors.black,
                                width: 2.0
                            )
                        )
                    ),
                  ),

                ),
                const Icon(Icons.add_alert_outlined),
                const Icon(Icons.heart_broken_outlined),
                const Icon(Icons.shopping_bag_outlined),

              ],
            ),
          )


        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  Icon(Icons.home),
                  SizedBox(
                    width: 10.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/dd1.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Sale",style: TextStyle(
                        fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/dd1.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Men",style: TextStyle(
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/dd1.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Women",style: TextStyle(
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/dd1.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Kids",style: TextStyle(
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Row(
                    children: [
                      CircleAvatar(
                        backgroundImage: AssetImage("images/dd1.jpg"),
                      ),
                      SizedBox(
                        width: 10.0,
                      ),
                      Text("Home",style: TextStyle(
                          fontWeight: FontWeight.w500
                      ),)
                    ],
                  )
                ],
              ),

            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(

                children: [
                  for(int i=0; i<=myContainerList.entries.first.value.length; i++ )
                  const MenuContainer(
                      htr: 80.0,
                      wtr:110.0,
                  str: "Father's Day",),
                  const MenuContainer(
                    htr: 80.0,
                    wtr:110.0,
                    str: "Home",),
                  const MenuContainer(
                    htr: 80.0,
                    wtr:110.0,
                    str: "Handbags",),
                  const MenuContainer(
                    htr: 80.0,
                    wtr:110.0,
                    str: "Luggage & Trolleys",),


                ],
              ),
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    MyColoum3(wtr: 380.0, htr: 200.0,
                      str: "Wrangler",
                      str2: "MIN. 40%",
                      radis: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,),
                    MyColoum3(wtr: 380.0, htr: 200.0,
                      str: "Wrangler",
                      str2: "MIN. 40%",
                      radis: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    MyColoum3(wtr: 380.0, htr: 200.0,
                      str: "Wrangler",
                      str2: "MIN. 40%",
                      radis: 20.0,
                    ),

                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  const MyColoum5(
                    wtr: 250.0,
                    htr: 50.0,
                    col: Colors.orange,
                    str: "ICIC Bank",),
                  MyColoum5(
                    wtr: 250.0,
                    htr: 50.0,
                    col: Colors.blueAccent.shade700,
                    str: "YES BANK",),
                  const MyColoum5(
                    wtr: 250.0,
                    htr: 50.0,
                    col: Colors.red,
                    str: "PNB Bank",),

                ],
              ),
            ),
            Container(
              height: 200.0,
              width: double.maxFinite,
              color: Colors.black,
              child: Column(
                children: [
                  const SizedBox(
                    height: 10.0,
                  ),
                  const Text("The ultimate style treat",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.w500,
                    fontSize: 20.0
                  ),),
                  const Text("Premium Coupon await",
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.w700,
                          fontSize: 20.0
                      ),),
                  Container(
                    height: 120.0,
                    width: 370.0,
                    padding: const EdgeInsets.all(8.0),
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.green.shade500,
                        width: 4.0
                      )
                    ),
                    child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          height: 90.0,
                          width: 100.0,
                          color: Colors.white,
                          child: Column(
                            children: [
                              const Text("EXTRA",
                              style: TextStyle(
                              fontSize: 28.0,
                                fontWeight: FontWeight.w900
                              ),),
                              const Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("10%",style: TextStyle(
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.w900
                                  ),),
                                  RotatedBox(quarterTurns: 3,
                                  child: Text("OFF*",style: TextStyle(
                                    fontSize: 14.0,
                                      fontWeight: FontWeight.w700
                                  )),)
                                ],
                              ),
                              const Text("ON ORDER ABOVE RS 2990",
                              style: TextStyle(
                                fontSize: 7.0,
                                fontWeight: FontWeight.w700
                              ),),
                              Container(

                                width: 98.0,
                                color: Colors.green,
                              )
                            ],
                          ),

                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 90.0,
                          width: 100.0,
                          color: Colors.white,
                          child: const Column(
                            children: [
                              Text("EXTRA",
                                style: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w900
                                ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("15%",style: TextStyle(
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.w900
                                  ),),
                                  RotatedBox(quarterTurns: 3,
                                    child: Text("OFF*",style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700
                                    )),)
                                ],
                              ),
                              Text("ON ORDER ABOVE RS 3990",
                                style: TextStyle(
                                    fontSize: 7.0,
                                    fontWeight: FontWeight.w700
                                ),)
                            ],
                          ),

                        ),
                        const SizedBox(
                          width: 20.0,
                        ),
                        Container(
                          height: 90.0,
                          width: 100.0,
                          color: Colors.white,
                          child: const Column(
                            children: [
                              Text("EXTRA",
                                style: TextStyle(
                                    fontSize: 28.0,
                                    fontWeight: FontWeight.w900
                                ),),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text("20%",style: TextStyle(
                                      fontSize: 28.0,
                                      fontWeight: FontWeight.w900
                                  ),),
                                  RotatedBox(quarterTurns: 3,
                                    child: Text("OFF*",style: TextStyle(
                                        fontSize: 14.0,
                                        fontWeight: FontWeight.w700
                                    )),)
                                ],
                              ),
                              Text("ON ORDER ABOVE RS 4990",
                                style: TextStyle(
                                    fontSize: 7.0,
                                    fontWeight: FontWeight.w700
                                ),)
                            ],
                          ),

                        )
                      ],
                    ),
                  )

                ],
              ),
            ),
            const SizedBox(
              height: 10.0,
            ),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    MyColoum3(wtr: 380.0, htr: 200.0,
                      str: "Wrangler",
                      str2: "MIN. 40%",
                      radis: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,),
                    MyColoum3(wtr: 380.0, htr: 200.0,
                      str: "Wrangler",
                      str2: "MIN. 40%",
                      radis: 20.0,
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    MyColoum3(wtr: 380.0, htr: 200.0,
                      str: "Wrangler",
                      str2: "MIN. 40%",
                      radis: 20.0,
                    ),

                  ],
                ),
              ),
            ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              const MyColoum5(
                wtr: 250.0,
                htr: 50.0,
                col: Colors.orange,
                str: "ICIC Bank",),
              MyColoum5(
                wtr: 250.0,
                htr: 50.0,
                col: Colors.blueAccent.shade700,
                str: "YES BANK",),
              const MyColoum5(
                wtr: 250.0,
                htr: 50.0,
                col: Colors.red,
                str: "PNB Bank",),

            ],
          ),
        ),
          ],
        ),
      )
    );
  }
}
