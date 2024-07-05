import 'dart:convert';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart';

void main(){
  runApp(Math());

}
class Math extends StatefulWidget {
  const Math({super.key});

  @override
  State<Math> createState() => _MathState();
}

class _MathState extends State<Math> {
  double? lat;
  double? lan;
  String?des;
  double? temp_min;
  double? temp_max;
  String? country;

  void getData() async{
    Response response= await get(Uri.parse("https://api.openweathermap.org/data/2.5/weather?lat=44.34&lon=10.99&appid=677d37cb59e39736029b3429ec6d2326"));
   var data= jsonDecode(response.body);

   setState(() {
        lat=data["coord"]["lon"];
        lan=data["coord"]["lat"];
        des=data["weather"][0]["description"];
        temp_min=data["main"]["temp_min"];
        temp_max=data["main"]["temp_max"];
        country=data["sys"]["country"];
   });
  }
  @override
  void initState() {
    getData();
    super.initState();
  }
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Column(
            children: [
              Text('$lat'),
              Text('$lan'),
              Text("$des"),
              Text("$temp_min"),
              Text('$temp_max'),
              Text('$country'),
            ],
          ),
        ),
      ),
    );
  }
}
