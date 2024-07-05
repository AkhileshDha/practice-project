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
        appBar: AppBar(
          title: Text("flutter project demo 6"),
        ),
        body: SafeArea(
          child: Center(
            child: Container(
              height:800.0,
              width: double.maxFinite,
              color: Colors.yellowAccent.shade700,
              child: Column(
                children: [
                  Container(
                    height: 500.0,
                      width: 300.0,
                      child: Image.asset("images/dd1.jpg")),
                  Text("Build Awesome Apps",style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                    color: Colors.black
                  ),),
                  Container(
                    height: 40.0,
                      width: 200.0,
                      child: Text("Let's put  your creativity on the development Highway.")),
                  Row(
                    children: [
                      InkWell(
                        onTap: (){
                          print("my inkwell work");
                        },
                        child: Container(
                          height: 50.0,
                          width: 150.0,
                          margin: EdgeInsets.symmetric(horizontal: 16.0,vertical: 8.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('LOGIN',style: TextStyle(
                                fontWeight: FontWeight.w500
                              ),),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              )

                          ),
                        ),
                      ),
                      SizedBox(
                        width: 20.0,
                      ),
                      InkWell(
                        onTap: (){
                          print("my inkwell work");
                        },
                        child: Container(
                          height: 50.0,
                          width: 150.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text('SIGNUP',style: TextStyle(color: Colors.white),),
                            ],
                          ),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.black,
                              border: Border.all(
                                color: Colors.black,
                                width: 2.0,
                              )

                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
