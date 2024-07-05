import 'package:flutter/material.dart';

void main()
{
  runApp(Profile());
}
class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Center(
          child: Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Row(
                    children: [CircleAvatar(
                          radius: 60.0,
                    backgroundImage:AssetImage("images/1.jpg"),
                    ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("Your Name",style: TextStyle(fontSize:40.0,fontWeight: FontWeight.bold),),
                          Text("Software Developer",style: TextStyle(fontWeight: FontWeight.bold),),
                    ],
                  )
                ],
              ),
                SizedBox(
                  height: 40.0,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 40.0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Icon(Icons.school),
                          SizedBox(
                            width: 40.0,
                            height: 60.0,
                          ),
                          Text('School Name,City',style: TextStyle(fontSize: 20.0),)
                        ],
                      ),
                  Row(children: [
                    Icon(Icons.account_balance_wallet_sharp),
                    SizedBox(
                      width: 40.0,
                      height: 60.0,
                    ),
                    Text('Any Project',style: TextStyle(fontSize: 20.0))
                  ],),
                  Row(children: [
                    Icon(Icons.location_on),
                    SizedBox(
                      width: 40.0,
                      height: 60.0,
                    ),
                    Text('My location',style: TextStyle(fontSize: 20.0))
                  ]),
                  Row(children: [
                    Icon(Icons.email),
                    SizedBox(
                      width: 40.0,
                      height: 60.0,
                    ),
                    Text('Trisanco12@gmail.com',style: TextStyle(fontSize: 20.0))
                  ]),
                  Row(children: [
                    Icon(Icons.phone,),
                    SizedBox(
                      width: 40.0,
                      height: 60.0,
                    ),
                    Text('9992223334',style: TextStyle(fontSize: 20.0))
                  ]),
                    ],
                  ),
                ),
                SizedBox(
                  height:20.0,
                ),
                Text("Content writing is the process of creating text-based content—such as blog posts, ebooks, and newsletters—usually for digital marketing purposes",style: TextStyle(fontSize: 20.0),),
                SizedBox(
                  height: 130.0,
                ),
                Text("Created by Akhilesh")],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

