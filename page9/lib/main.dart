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
          title: Text("flutter Demo project 9"),
        ),
        body: Container(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                height: 150.0,
                  width: 130.0,
                  child: Image.asset("images/dd1.jpg")
              ),
              Text("Welcome Back,",
              style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 40.0
              ),),
              Text("Make it work,Make it right,Make it fast.",
                style: TextStyle(
                fontWeight: FontWeight.w700,
              ),),
              SizedBox(
                height: 5.0,
              ),
              TextField(
                decoration: InputDecoration(
                  hintText: 'Enter Email',
                  prefixIcon: IconButton(
                    onPressed: (){}, icon: Icon(Icons.mail),
                  ),
                  border: OutlineInputBorder(
                    borderRadius:BorderRadius.circular(8.0),
                    borderSide: BorderSide(
                      color: Colors.black
                    )

                  )
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              TextField(
                decoration: InputDecoration(
                    hintText: 'Enter Password',
                    prefixIcon: IconButton(
                      onPressed: (){}, icon: Icon(Icons.document_scanner_outlined),
                    ),
                    suffixIcon: IconButton(
                      icon: Icon(Icons.remove_red_eye),
                      onPressed: (){},
                    ),
                    border: OutlineInputBorder(
                        borderRadius:BorderRadius.circular(8.0),
                        borderSide: BorderSide(
                            color: Colors.black
                        )

                    )
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              InkWell(
                child: Container(
                  child: Text("Forget Password?",style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500
                  ),),
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50.0,
                width: 400.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                  color: Colors.black
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("LOGIN",style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w700,
                      fontSize: 14.0
                    ),),
                  ],
                ),
              ),
              SizedBox(
                height: 10.0,
              ),
              Text("OR",
                style: TextStyle(
                fontWeight: FontWeight.w500
              ),),
              SizedBox(
                height: 10.0,
              ),
              Container(
                height: 50.0,
                width: 400.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(9.0),
                  border: Border.all(
                    color: Colors.black,
                    width: 1.0
                  )

                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(Icons.g_mobiledata),
                    Text("Sign-in with Google",style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w700,
                        fontSize: 14.0
                    ),),
                  ],
                ),
              ),
              SizedBox(height: 10.0,),
              Row(
                children: [
                  Text("Don't have an Account?",style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500
                  ),),
                  Text("SignUp",style: TextStyle(
                    color: Colors.blueAccent,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
