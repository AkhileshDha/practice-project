import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body:SafeArea(
        child:Container(
          child: Center(
            child: Column(

              children: [
              Container(
                padding:EdgeInsets.fromLTRB(0, 15.0, 0, 0),
                child: Text("Login",style: TextStyle(
                  color:Colors.blueGrey,
                  fontSize:50.0,
                  fontWeight: FontWeight.bold
                ),),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,

                ),
                padding: EdgeInsets.all(10.0),
                child:TextField(
                  decoration: InputDecoration(
                      labelText: 'Email',
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ) ),
                ),

              ),

              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(28.0),
                ),
                padding: EdgeInsets.all(10.0),
                child:TextField(
                  decoration: InputDecoration(
                      labelText: 'Password',
                      enabledBorder:OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.blue),
                      ) ),
                ),
              ),
                SizedBox(
                  height:10.0 ,
                ),
              Container(
                height: 60.0,
                width: 200.0,
                decoration: BoxDecoration(
                    color: Colors.blue,
                  borderRadius: BorderRadius.circular(28.0)
                ),
                  padding: EdgeInsets.fromLTRB(45.0, 0, 0, 0),
                child:Text('Login', style:TextStyle(color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 40.0
                ),
                )
              ),
                SizedBox(
                  height:10.0 ,
                ),
                Container(
                  width: 200.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28.0),
                    border: Border.all(color:Colors.blue )
                  ),
                  child:TextButton(
                    child: Text("Facebook",style: TextStyle(color: Colors.blue,
                  fontWeight: FontWeight.bold,
                    fontSize: 30.0,),),
                onPressed: (){},),
                ),
                SizedBox(
                  height:10.0 ,
                ),
                Container(
                  width: 200.0,
                  height: 60.0,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(28.0),
                    border: Border.all(
                      color: Colors.red,
                    )
                  ),
                  child: TextButton(
                    child:Text("Google",style: TextStyle(color: Colors.red,
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,),),onPressed: (){},),
                ),
                SizedBox(
                  height:20.0 ,
                ),
                Container(
                  child: TextButton(
                    child: Text("Forget Password"),
                    onPressed: (){},
                  )
                )
              ]
            ),
          ),
        ),
      ),
      ),
    );
  }
}
