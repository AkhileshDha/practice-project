
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

void main(){
  runApp(udemy());
}
class udemy extends StatelessWidget {
  const udemy({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: CupertinoColors.black,
        body:SafeArea(
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
            children: [
            CircleAvatar(
            radius: 50.0,
          backgroundImage: AssetImage('image/1.png'),
        ),
            SizedBox(
              height: 5.0,
            ),
            Text('Trisanco Infotech Pvt Ltd',style: TextStyle(color: Colors.white,fontSize: 20.0,)),
            SizedBox(
              height: 5.0,
            ),
            Text('Sowftware Developement',style: TextStyle(color: Colors.white,fontSize: 20.0,letterSpacing :2.5,fontWeight:FontWeight.bold)),
            SizedBox(
              width: 200.0,
              height: 10.0,
              child: Divider(
                color: Colors.teal.shade100,
              ),),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),

              margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 10.0),
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(Icons.phone,
                  color: Colors.black,),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("+91 1234 1234 1234",style: TextStyle(fontSize: 20.0),)
                ],
              )
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                color: Colors.white,
              ),
              margin: EdgeInsets.symmetric(vertical: 20.0,horizontal: 10.0),
              padding: EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Icon(Icons.email,
                    color: Colors.black,),
                  SizedBox(
                    width: 15.0,
                  ),
                  Text("trisancoinfotech.@gmail.com ",style: TextStyle(fontSize: 20.0),)
                ],
              ),
            )
          ],
        ),
        ),
      ),
    );
  }
}
