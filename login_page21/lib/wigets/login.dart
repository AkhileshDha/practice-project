import 'package:flutter/material.dart';
class MyLogin extends StatelessWidget {
  const MyLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            title: Text("Login Page1"),
          ),
          body:Column(
            children: [
              Container(
                height: 70.0,
                width:double.maxFinite,
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Email",
                      prefixIcon: Icon(Icons.mail),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      )


                    )
                  ),
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Container(
                height: 70.0,
                width:double.maxFinite,
                padding: EdgeInsets.all(8.0),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "password",
                      prefixIcon: Icon(Icons.remove_red_eye),
                      border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(9.0),
                      borderSide: BorderSide(
                        width: 2.0,
                        color: Colors.black,
                      )


                    )
                  ),
                ),
              ),
              SizedBox(
                height: 10.0,),
              Container(
                height: 40.0,
                  width: 160.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.0),
                    color: Colors.blue
                  ),
                  child: TextButton(onPressed: (){},child:Text("Sign Up",style:
                    TextStyle(
                      color: Colors.white
                    ),))),
              SizedBox(
                height: 10.0,
              ),
              Text("Forget Password",
                style: TextStyle(
                color: Colors.blue
              ),)

            ],
          ) ,
        ),
      ),
    );
  }
}
