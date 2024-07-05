import 'package:flutter/material.dart';
import 'package:registratation_from/ui_helper/alert_file.dart';
import 'package:registratation_from/ui_helper/container.dart';
void main(){
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: SafeArea(
        child: Scaffold(
          body:SingleChildScrollView(
            child: Center(
              child: Column(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage("images/dd1.jpg"),
                    backgroundColor: Colors.black,
                    minRadius: 65.0,
                  ),
                  Text("SIGNUP",
                    style: TextStyle(
                    fontSize: 30.0,
                    fontWeight: FontWeight.w700,
                  ),
                  ),
                    SizedBox(
                    height: 10.0,
                  ),
                  ContainerT(
                    str: "Name",
                    pp:Icons.insert_emoticon_rounded,
                  ),
                   SizedBox(
                    height: 10.0,
                  ),
                    ContainerT(
                      sts: true,
                    str: "password",
                      pp:Icons.remove_red_eye,
                  ),
                    SizedBox(
                    height: 10.0,
                  ),
                     ContainerT(
                         str:"DOB",
                     pp:Icons.cake_outlined),
                    SizedBox(
                      height: 10.0,
                    ),
                    InkWell(
                           child: MyAlert()),

                ],
              ),
            ),
          ) ,
        ),
      ),
    );
  }
}
